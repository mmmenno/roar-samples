<?php 

include("../settings.php");

echo "
@prefix :      		<http://gendata.denengelse.nl/> .
@prefix rdf:		<http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs:      	<http://www.w3.org/2000/01/rdf-schema#> .
@prefix schema:		<http://schema.org/> .
@prefix bio: 		<http://purl.org/vocab/bio/0.1/> .
@prefix sem: 		<http://semanticweb.cs.vu.nl/2009/11/sem/> .
@prefix roar:		<https://w3id.org/roar#> .
@prefix xsd:		<http://www.w3.org/2001/XMLSchema#> .
@prefix geo: 		<http://www.opengis.net/ont/geosparql#> .
@prefix pnv:		<https://w3id.org/pnv#> .
\n\n";



$sql = "SELECT woonadresobservaties.*, persoonsobservaties.document FROM `woonadresobservaties` 
		LEFT JOIN persoonsobservaties ON woonadresobservaties.persoonsobservatieid = persoonsobservaties.id
		ORDER BY id ASC";
$result = $mysqli->query($sql);

$locs = array();

while($row = $result->fetch_assoc()){
	if(!isset($locs[$row['nearesturi'] . $row['document']])){
		$locs[$row['nearesturi'] . $row['document']] = $row;
		$locs[$row['nearesturi'] . $row['document']]['bewoners'] = array();
	}
	$locs[$row['nearesturi'] . $row['document']]['bewoners'][] = array(
		"poid" => $row['persoonsobservatieid'],
		"van" => $row['van'],
		"tot" => $row['tot']
	);
}

//print_r($locs);


foreach($locs as $loc){
	echo ":lo" . $loc['id'] . " a roar:LocationObservation ;\n";
		echo "\trdfs:label \"" . $loc['label'] . "\" ;\n";
		echo "\tgeo:geoWithin <" . $loc['nearesturi'] . "> ;\n";
		foreach($loc['bewoners'] as $bewoner){
			echo "\troar:hasPerson [\n";
			    echo "\t\trdf:value :po" . $bewoner['poid'] . " ;\n";
			    if(strlen($bewoner['van'])){
			    	echo "\t\tsem:hasLatestBeginTimeStamp \"" . $bewoner['van'] . "\"^^xsd:date ;\n";
				}
				if(strlen($bewoner['tot'])){
			    	echo "\t\tsem:hasEarliestEndTimeStamp \"" . $bewoner['tot'] . "\"^^xsd:date ;\n";
				}
			    echo "\t\troar:role \"residence\" \n";
			    
			echo "\t] ;\n";
    	}
    	echo "\troar:documentedIn <" . $loc['document'] . "> .\n\n";
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