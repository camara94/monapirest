<?php
//error_reporting(E_ALL);
//ini_set('display_errors', 1);
    // required headers
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    //require_once "chargerClasse.php";
    require_once "Rest.php";
    require_once "Database.php";
    require_once "models/SujetManager.php";
    require_once "controllers/Sujet.php";
    require_once "models/departementManager.php";
    require_once "controllers/departement.php";
    require_once "models/UniversiteManager.php";
    require_once "controllers/universite.php";
    
    

    /*$pdo = new Database();
    $pm = new UniversiteManager($pdo->getConnection());
    $restfull = new Rest_Rest();
    //$restfull->response($pm->getAll());
    //echo $restfull->response($pm->getAll(), 200);

    /*foreach($pm->getAll() as $key => $value) {
        
        //var_dump($value);
        //echo $restfull->response($value,200);
        //$restfull->response(['Camara','Laby', 'Damaro'], 200);
        //echo $value->getNom() . ' ' . $value->getAdresse(). "\n";
        //var_dump($value->getDepartement());
        /*foreach ($value->getDepartement() as $k => $v) {
           //var_dump($v);
           echo $v->getId();
        }*/
        /*foreach ($value->getDepartement() as $ke => $val) {
           /* foreach ($val as $y => $x) {
                echo $x->getTitle();
            }*/
            /*echo json_encode($restfull->utf8ize($val));
            //var_dump($val);
        }
    }*/

    //require_once "Sujet.php";
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
            $retour["result"]["nb"] = count( $sujet->readOne(0,$_GET['cession'],""));
            $retour["result"]["matiere"] = $sujet->readOne(0,$_GET['cession'],"");
        }
        else if(isset($_GET['departement'])){
            $retour["result"]["nb"] = count($sujet->readOne(0,'',$_GET['departement']));
            $retour["result"]["matiere"] = $sujet->readOne(0,'',$_GET['departement']);
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