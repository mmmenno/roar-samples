<?php 

error_reporting(E_ALL ^ E_NOTICE);  

include("../settings.php");

$sql = "SELECT * FROM persoonsreconstructies";
$result = $mysqli->query($sql);

$reconstructies = array();

while($row = $result->fetch_assoc()){

	# PERSOONSGEGEVENS HALEN

	$sql2 = "SELECT * FROM persoonsobservaties where reconstructieid = " . $row['id'];
	$result2 = $mysqli->query($sql2);

	$vns = array();
	$tvs = array();
	$ans = array();
	$yearsob = array();
	$datesob = array();
	$pob = array();
	$yearsod = array();
	$datesod = array();
	$pod = array();

	$derivedfrom = array();

	while($row2 = $result2->fetch_assoc()){
		$derivedfrom[] = ":po" . $row2['id'];
		if(strlen($row2['voornaam'])){
			$vns[$row2['voornaam']]++;
		}
		if(strlen($row2['tussenvoegsel'])){
			$tvs[$row2['tussenvoegsel']]++;
		}
		if(strlen($row2['achternaam'])){
			$ans[$row2['achternaam']]++;
		}
		if(strlen($row2['geboortedatum'])){
			$yearsob[] = substr($row2['geboortedatum'],0,4);
			if(!preg_match("/[0-9]{4}-00-00/",$row2['geboortedatum'])){
				$datesob[] = $row2['geboortedatum'];
			}
		}
		if(strlen($row2['sterfdatum'])){
			$yearsod[] = substr($row2['sterfdatum'],0,4);
			if(!preg_match("/[0-9]{4}-00-00/",$row2['sterfdatum'])){
				$datesod[] = $row2['sterfdatum'];
			}
		}
		if(strlen($row2['geboorteplaatsuri'])){
			$pob[] = $row2['geboorteplaatsuri'];
		}
		if(strlen($row2['sterfplaatsuri'])){
			$pod[] = $row2['sterfplaatsuri'];
		}
	}

	arsort($vns);
	arsort($tvs);
	arsort($ans);

	$yearsob = array_unique($yearsob);
	$datesob = array_unique($datesob);
	$pob = array_unique($pob);

	$person = array("pnv" => array("literalName" => ""));
	if(count($vns)){
		$person['pnv']["givenName"] = array_key_first($vns);
		$person['pnv']["literalName"] .= array_key_first($vns) . " ";
	}
	if(count($tvs)){
		$person['pnv']["surnamePrefix"] = array_key_first($tvs);
		$person['pnv']["literalName"] .= array_key_first($tvs) . " ";
	}
	if(count($ans)){
		$person['pnv']["baseSurname"] = array_key_first($ans);
		$person['pnv']["literalName"] .= array_key_first($ans);
	}
	$person['pnv']["literalName"] = trim($person['pnv']["literalName"]);

	if(count($datesob ) == 1){
		$person['dob'] = $datesob[0];
	}elseif(count($yearsob) == 1){
		$person['dob'] = $yearsob[0];
	}

	if(count($pob )){
		$person['poburi'] = $pob[0];
	}

	if(count($datesod ) == 1){
		$person['dod'] = $datesod[0];
	}elseif(count($yearsob) == 1){
		$person['dod'] = $yearsod[0];
	}

	if(count($pod )){
		$person['poduri'] = $pod[0];
	}



	// WOONADRESSEN HALEN

	$poids = array();
	$residencies = array();
	foreach($derivedfrom as $k => $v){
		$poids[] = str_replace(":po","",$v);
	}
	$sql3 = "SELECT * FROM woonadresobservaties where persoonsobservatieid IN ( " . implode(",",$poids) . ")";
	$result3 = $mysqli->query($sql3);

	while($row3 = $result3->fetch_assoc()){
		$residencies[] = $row3;
		$derivedfrom[] = ":lo" . $row3['id'];
	}

	$residencies = orderResidencies($residencies);

	$person['residencies'] = $residencies;



	$person['derivedFrom'] = $derivedfrom;

	$reconstructies[$row['id']] = $person;
}

//print_r($reconstructies);



function orderResidencies($observations){

	// step 1: group by uri
	$byuri = array();
	foreach($observations as $k => $v){

		$byuri[$v['nearesturi']][] = $v;
	}


	// step 2: determine periods
	$stays = array();
	foreach($byuri as $uri => $locobservations){
		unset($earliest);
		unset($latest);
		$labels = array();
		foreach($locobservations as $key => $obsinfo){
			if(!isset($earliest) && strlen($obsinfo['van'])){
				$earliest = str_replace("-","",$obsinfo['van']);
			}elseif(strlen($obsinfo['van'])){
				$van = str_replace("-","",$obsinfo['van']);
				if($van < $earliest){
					$earliest = $van;
				}
			}
			if(!isset($latest) && strlen($obsinfo['tot'])){
				$latest = str_replace("-","",$obsinfo['tot']);
			}elseif(strlen($obsinfo['tot'])){
				$tot = str_replace("-","",$obsinfo['tot']);
				if($tot > $latest){
					$latest = $tot;
				}
			}
			$labels[] = $obsinfo['label'];
		}
		$van = "";
		if(strlen($earliest)){
			$van = substr($earliest,0,4) . "-" . substr($earliest,4,2) . "-" . substr($earliest,6,2);
		}
		$tot = "";
		if(strlen($latest)){
			$tot = substr($latest,0,4) . "-" . substr($latest,4,2) . "-" . substr($latest,6,2);
		}
		$labels = array_unique($labels);
		$stays[] = array(
			"uri" => $uri,
			"latlong" => $obsinfo['latlong'],
			"labels" => $labels,
			"van" => $van,
			"tot" => $tot
		);
	}


	// step 3: order stays chronologically
	usort($stays, 'sortByStartdate');
	
	return $stays;
}

function sortByStartdate($a, $b) {
	return strcmp($a['van'], $b['van']);
}

//die;


// FINALLY, EXPORT TURTLE

echo "
@prefix :      		<http://gendata.denengelse.nl/> .
@prefix rdf:		<http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs:      	<http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema:		<http://schema.org/> .
@prefix bio: 		<http://purl.org/vocab/bio/0.1/> .
@prefix sem: 		<http://semanticweb.cs.vu.nl/2009/11/sem/> .
@prefix roar:		<https://w3id.org/roar#> .
@prefix prov:		<http://www.w3.org/ns/prov#> .
@prefix xsd:		<http://www.w3.org/2001/XMLSchema#> .
@prefix geo: 		<http://www.opengis.net/ont/geosparql#> .
@prefix pnv:		<https://w3id.org/pnv#> .
\n\n";




foreach($reconstructies as $rkey => $r){
	//echo ":pr-" . hash("adler32",implode("-",$r['derivedFrom'])) . " a roar:PersonReconstruction ;\n";
	echo ":pr" . $rkey . " a roar:PersonReconstruction ;\n";
		echo "\trdfs:label \"" . $r['pnv']['literalName'] . "\" ;\n";
		echo "\tpnv:hasName [ \n";
			echo "\t\ta pnv:PersonName ;\n";
			if(isset($r['pnv']['givenName'])){
        		echo "\t\tpnv:givenName \"" . $r['pnv']['givenName'] . "\" ;\n";
        	}
        	if(isset($r['pnv']['surnamePrefix'])){
        		echo "\t\tpnv:surnamePrefix \"" . $r['pnv']['surnamePrefix'] . "\" ;\n";
        	}
        	if(isset($r['pnv']['baseSurname'])){
        		echo "\t\tpnv:baseSurname \"" . $r['pnv']['baseSurname'] . "\" ;\n";
        	}
        	if(isset($r['pnv']['literalName'])){
        		echo "\t\tpnv:literalName \"" . $r['pnv']['literalName'] . "\" ;\n";
        	}
    	echo "\t] ;\n";
    	if(isset($r['dob'])){
    		echo "\tbio:birth [\n";
			    echo "\t\ta bio:Birth ;\n";
			    if(strlen($r['dob'])==10){
			    	echo "\t\tsem:hasTimeStamp \"" . $r['dob'] . "\"^^xsd:date ;\n";
				}
			    if(strlen($r['dob'])==4){
			    	echo "\t\tsem:hasTimeStamp \"" . $r['dob'] . "\"^^xsd:gYear ;\n";
				}
				if(strlen($r['poburi'])){
			    	echo "\t\tbio:place <" . $r['poburi'] . "> ;\n";
				}
			    echo "\t\tbio:principal :pr" . $rkey . " \n";
			    
			echo "\t] ;\n";
    	}
    	if(isset($r['dod'])){
    		echo "\tbio:death [\n";
			    echo "\t\ta bio:Death ;\n";
			    if(strlen($r['dod'])==10){
			    	echo "\t\tsem:hasTimeStamp \"" . $r['dod'] . "\"^^xsd:date ;\n";
				}
			    if(strlen($r['dod'])==4){
			    	echo "\t\tsem:hasTimeStamp \"" . $r['dod'] . "\"^^xsd:gYear ;\n";
				}
				if(strlen($r['poduri'])){
			    	echo "\t\tbio:place <" . $r['poduri'] . "> ;\n";
				}
			    echo "\t\tbio:principal :pr" . $rkey . " \n";
			    
			echo "\t] ;\n";
    	}

    	$i = 0;
		foreach($r['residencies'] as $residence){
			$i++;
			echo "\troar:hasLocation [\n";
			    echo "\t\ta roar:Location ;\n";
			    echo "\t\trdfs:label \"" . $residence['labels'][0] . "\" ;\n";
				echo "\t\tgeo:geoWithin <" . $residence['uri'] . "> ;\n";
				echo "\t\tschema:position \"" . $i . "\"^^xsd:integer ;\n";
			    if(strlen($residence['van'])){
			    	echo "\t\tsem:hasLatestBeginTimeStamp \"" . $residence['van'] . "\"^^xsd:date ;\n";
				}
				if(strlen($residence['tot'])){
			    	echo "\t\tsem:hasEarliestEndTimeStamp \"" . $residence['tot'] . "\"^^xsd:date ;\n";
				}
			    echo "\t\troar:role \"residence\" \n";
			    
			echo "\t] ;\n";
    	}
    	echo "\tprov:wasDerivedFrom " . implode(", ",$r['derivedFrom']) . " .\n\n";
}


die;

$sql = "select distinct(geboorteplaatsuri), geboorteplaatslatlong from persoonsobservaties where geboorteplaatsuri <> ''";
$result = $mysqli->query($sql);

while($row = $result->fetch_assoc()){

	$wgspoints = explode(",",$row['geboorteplaatslatlong']);
	$wgswkt = "POINT(" . $wgspoints[0] . " " .$wgspoints[1] . ")";

	echo "<" . $row['geboorteplaatsuri'] . "> geo:hasGeometry [\n";
		echo "\tgeo:asWKT \"" . $wgswkt . "\"^^geo:wktLiteral\n";
	echo "] .\n\n";

}


?>