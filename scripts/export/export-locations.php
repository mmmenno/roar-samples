<?php 

error_reporting(E_ALL ^ E_NOTICE);  

include("../settings.php");

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



$sql = "select distinct(geboorteplaatsuri), geboorteplaatslatlong from persoonsobservaties where geboorteplaatsuri <> ''";
$result = $mysqli->query($sql);

while($row = $result->fetch_assoc()){

	$wgspoints = explode(",",$row['geboorteplaatslatlong']);
	$wgswkt = "POINT(" . $wgspoints[1] . " " .$wgspoints[0] . ")";

	echo "<" . $row['geboorteplaatsuri'] . "> a roar:Location ; \n";
	echo "\tgeo:hasGeometry [\n";
		echo "\t\tgeo:asWKT \"" . $wgswkt . "\"^^geo:wktLiteral\n";
	echo "\t] .\n\n";

}


$sql = "select distinct(nearesturi), latlong from woonadresobservaties where nearesturi <> ''";
$result = $mysqli->query($sql);

while($row = $result->fetch_assoc()){

	$wgspoints = explode(",",$row['latlong']);
	$wgswkt = "POINT(" . $wgspoints[1] . " " .$wgspoints[0] . ")";

	echo "<" . $row['nearesturi'] . "> a roar:Location ; \n";
	echo "\tgeo:hasGeometry [\n";
		echo "\t\tgeo:asWKT \"" . $wgswkt . "\"^^geo:wktLiteral\n";
	echo "\t] .\n\n";

}


?>