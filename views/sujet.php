<?php
    require_once "../rest.php";
    require_once "../Database.php";
    require_once "../models/SujetManager.php";
    require_once "../controllers/Sujet.php";

    $retour = array();
    $pdo = new Database();
    $conn = $pdo->getConnection();
    $sujet = new SujetManager($conn);
    // query products*/

    if($conn != null) {  
        $retour["success"] = true;
        if(isset($_GET['id']) ){
            $retour["result"]["nb"] = count($sujet->readOne($_GET['id']));
            $retour["result"]["matiere"] = $sujet->readOne($_GET['id']);
        }
        else if(isset($_GET['cession'])){
            $retour["result"]["nb"] = count( $sujet->readOne(0, $_GET['cession'], "", ""));
            $retour["result"]["matiere"] = $sujet->readOne(0, $_GET['cession'], "", "");
        }
        else if(isset($_GET['departement'])){
            $retour["result"]["nb"] = count($sujet->readOne(0, '', $_GET['departement'], ""));
            $retour["result"]["matiere"] = $sujet->readOne(0,'',$_GET['departement'], "");
        }
        else if(isset($_GET['semestre'])){
            $retour["result"]["nb"] = count($sujet->readOne(0,'', '', $_GET['semestre']));
            $retour["result"]["matiere"] = $sujet->readOne(0, '', '',$_GET['semestre']);
        }
        else {
        //print_r($sujet->read() );
        //die();
            $retour["result"]["nb"] = count($sujet->read());
            $retour["result"]["matiere"] = $sujet->read(); 
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
