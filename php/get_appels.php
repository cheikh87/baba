<?php
error_reporting(0);
// fichier de config où se trouve le mot de passe et les paramètres de connexion à la bdd
include_once('config.php');

header("Access-Control-Allow-Origin: *");//this allows coors
header('Content-Type: application/json');



	$entite=$_GET[entite];


//On fait la requète qui va recupérer sur la table tous les enregistrements qui ont des audio
    $sql = 'select *from cdr where filename is not null';
    $req = $conn->prepare($sql);
    $req->execute();



 $result = $req->fetchAll(PDO::FETCH_ASSOC);

//Ici on encode le resultat de la requete au format JSON 
echo json_encode($result);

?>
