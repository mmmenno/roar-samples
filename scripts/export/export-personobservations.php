<?php 

include("../settings.php");

echo "
@prefix :      		<http://gendata.denengelse.nl/> .
@prefix rdf:		<http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs:      	<http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema:		<http://schema.org/> .
@prefix bio: <http://purl.org/vocab/bio/0.1/> .
@prefix sem: <http://semanticweb.cs.vu.nl/2009/11/sem/> .
@prefix roar:		<https://w3id.org/roar#> .
@prefix xsd:		<http://www.w3.org/2001/XMLSchema#> .
@prefix geo: 		<http://www.opengis.net/ont/geosparql#> .
@prefix pnv:		<https://w3id.org/pnv#> .
\n\n";



$sql = "select * from persoonsobservaties";
$result = $mysqli->query($sql);

$docs = array();

while($row = $result->fetch_assoc()){

	$dob = "";
	$yob = "";
	$dod = "";
	$yod = "";

	$docs[$row['document']] = $row['documentlabel'];

	if(strlen($row['geboortedatum'])){
		$parts = explode("-",$row['geboortedatum']);
		if($parts[1] != "00" && $parts[2] != "00"){
			$dob = $row['geboortedatum'];
		}elseif($parts[1] == "00" && $parts[2] == "00"){
			$yob = $parts[0];
		}
	}

	if(strlen($row['sterfdatum'])){
		$parts = explode("-",$row['sterfdatum']);
		if($parts[1] != "00" && $parts[2] != "00"){
			$dod = $row['sterfdatum'];
		}elseif($parts[1] == "00" && $parts[2] == "00"){
			$yod = $parts[0];
		}
	}

	echo ":po" . $row['id'] . " a roar:PersonObservation ;\n";
		echo "\tpnv:hasName [ \n";
			echo "\t\ta pnv:PersonName ;\n";
			$litname = "";
			if(strlen($row['voornaam'])){
        		echo "\t\tpnv:givenName \"" . $row['voornaam'] . "\" ;\n";
        		$litname .= $row['voornaam'] . " ";
        	}
        	if(strlen($row['tussenvoegsel'])){
        		echo "\t\tpnv:surnamePrefix \"" . $row['tussenvoegsel'] . "\" ;\n";
        		$litname .= $row['tussenvoegsel'] . " ";
        	}
        	if(strlen($row['achternaam'])){
        		echo "\t\tpnv:baseSurname \"" . $row['achternaam'] . "\" ;\n";
        		$litname .= $row['achternaam'] . " ";        	}
        	echo "\t\tpnv:literalName \"" . trim($litname) . "\" \n";
    	echo "\t] ;\n";
    	if(strlen($dob . $yob)){
    		echo "\tbio:birth [\n";
			    echo "\t\ta bio:Birth ;\n";
			    if(strlen($dob)){
			    	echo "\t\tsem:hasTimeStamp \"" . $dob . "\"^^xsd:date ;\n";
				}
			    if(strlen($yob)){
			    	echo "\t\tsem:hasTimeStamp \"" . $yob . "\"^^xsd:gYear ;\n";
				}
				if(strlen($row['geboorteplaats'])){
			    	echo "\t\tbio:place [\n";
			    	if(strlen($row['geboorteplaatsuri'])){
			    		echo "\t\t\trdf:value <" . $row['geboorteplaatsuri'] . "> ;\n";
			    	}
			    	echo "\t\t\trdfs:label \"" . $row['geboorteplaats'] . "\"\n";
			    	echo "\t\t] ;\n";
				}
			    echo "\t\tbio:principal :po" . $row['id'] . " \n";
			    
			echo "\t] ;\n";
    	}
    	if(strlen($dod . $yod)){
    		echo "\tbio:death [\n";
			    echo "\t\ta bio:Death ;\n";
			    if(strlen($dod)){
			    	echo "\t\tsem:hasTimeStamp \"" . $dod . "\"^^xsd:date ;\n";
				}
			    if(strlen($yod)){
			    	echo "\t\tsem:hasTimeStamp \"" . $yod . "\"^^xsd:gYear ;\n";
				}
				if(strlen($row['sterfplaats'])){
			    	echo "\t\tbio:place [\n";
			    	if(strlen($row['sterfplaatsuri'])){
			    		echo "\t\t\trdf:value <" . $row['sterfplaatsuri'] . "> ;\n";
			    	}
			    	echo "\t\t\trdfs:label \"" . $row['sterfplaats'] . "\"\n";
			    	echo "\t\t] ;\n";
				}
			    echo "\t\tbio:principal :po" . $row['id'] . " \n";
			    
			echo "\t] ;\n";
    	}
    	echo "\troar:documentedIn <" . $row['document'] . "> .\n\n";

}

foreach ($docs as $key => $value) {
	echo "<" . $key . "> a roar:Document ;\n";
	echo "\trdfs:label \"" . $value . "\" .\n\n";
}


?>