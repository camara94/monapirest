<?php
/*ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);*/
    require_once "../rest.php";
    require_once "../Database.php";
    require_once "../models/FormationManager.php";
    require_once "../controllers/Formation.php";

    //require_once "Sujet.php";
    $retour = array();
    $pdo = new Database();
    $conn = $pdo->getConnection();
    $formation = new FormationManager($conn);
    // query products*/

    if($conn != null) {  
        $retour["success"] = true;
        if(isset($_GET['id']) ){
            $retour["result"]["nb"] = count($formation->readOne($_GET['id']));
            $retour["result"]["certificats"] = $formation->readOne($_GET['id']);
        }
        else if(isset($_GET['titre'])){
            $retour["result"]["nb"] = count($formation->readOne(0,$_GET['titre'],"", ""));
            $retour["result"]["certificats"] = $formation->readOne(0,$_GET['titre'],"", "");
        }
        else if(isset($_GET['auteur'])){
            $retour["result"]["nb"] = count($formation->readOne(0,'',$_GET['auteur'], ""));
            $retour["result"]["certificats"] = $formation->readOne(0,'',$_GET['auteur'], "");
        }
        else if(isset($_GET['plateforme'])){
            $retour["result"]["nb"] = count($formation->readOne(0,'','',$_GET['plateforme']));
            $retour["result"]["certificats"] = $formation->readOne(0,'','',$_GET['plateforme']);
        }
        else {
        //print_r($sujet->read() );
        //die();
            $retour["result"]["nb"] = count($formation->read());
            $retour["result"]["certificats"] = $formation->read(); 
        }  
    } else {
        $retour["success"] = false;
        $retour["messsage"] = "Connexion impossible à la base de donnée";
    }

    $restfull = new Rest_Rest();
    //print_r($retour);
    //die();
    try {
        echo $restfull->response($retour,200);
    } catch (Exception $e) {
        echo 'Caught exception: ',  $e->getMessage(), "\n";
    }
// LINK =    https://stackoverflow.com/questions/19361282/why-would-json-encode-return-an-empty-string*/
?>