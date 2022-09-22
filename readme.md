# Some roar Sample Data

In this repository you'll find some sample data that demonstrates the modelling of 'observations' and 'reconstructions' with the [roar ontology](https://w3id.org/roar/).

Allthough a 'sample', all persons, locations and documents in the data are 'real'. This ensures I'm not working with superclean fairytale data. In one way or another, I'm related to most of the people mentioned in the data - by making this a genealogical project it's a more fun for me (and members of my family, too - I hope).

An application that queries and visualises the data on a map can be found on [hicsuntleones.nl/family-map/](https://hicsuntleones.nl/family-map/), and there's a [git repo of the app](https://github.com/mmmenno/roar-sample-app-addresses) as well.

## collecting the data

All data was collected by hand and entered in MySQL tables. I could have used a spreadsheet, but this way it's a bit more easy (for me) to do batch edits when needed. You'll find the data (both as sql and csv) in the [data folder](/data)

## exporting the data to .ttl files

In the [scripts/export folder](scripts/export/) you'll find php-scripts to export personobservations, personreconstructions, locationobservations and locations to turtle.

[export-personreconstructions.php](scripts/export/export-personreconstructions.php) is the most interesting, since this script derives the reconstructions from both person- and locationobservations. Locations (mostly addresses) might be mentioned on multiple documents, sometimes there's a startdate, sometimes an enddate, sometimes both, sometimes none. On some documents only a year is mentioned, on others a full date (this also happens with birth and death dates). All this information is combined and ordered chronologically by this script, before exporting it to a turtle file.

## querying the data

The data can be queried at the [Druid SPARQL endpoint](https://druid.datalegend.net/menno/roar/sparql/roar).

## Some practical decisions

- Locationobservations are linked to URIs of locational entities (GeoNames places, Wikidata municipalities, Adamlink addresses, etc.). One could argue, and some academics obviously will, that linking is interpretation and therefore it is no longer an observation, but a reconstruction instead. I did not.
- Since it is hard to find URIs for each and every location, I aligned locationobservations with the most precise urified location I could find, and used the property `geo:geoWithin` to link the two.
















