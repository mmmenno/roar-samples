<?php



$db = "fam";
$name = "root";
$pass = "root";
$host = "127.0.0.1";
$port = "8889";

$mysqli = new mysqli($host, $name, $pass, $db, $port);
if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}

//printf("Initial character set: %s\n", $mysqli->character_set_name());

/* change character set to utf8 */
if (!$mysqli->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $mysqli->error);
    exit();
} else {
    //printf("Current character set: %s\n", $mysqli->character_set_name());
}


/*
require_once __DIR__ . '/vendor/autoload.php';

use Colors\Color;

$c = new Color();
*/


?>