<?php
    /*ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);*/
    require_once "../rest.php";
    require_once "../Database.php";
    require_once "../models/FormationManager.php";
    require_once "../controllers/Formation.php";


    $donnees = [$_POST["numCert"], $_POST["titre"], $_POST["description"], $_POST["auteur"], $_POST["plateforme"], $_POST["dateCertif"], "", $_POST["universite"]];

    $pdo = new Database();
    $conn = $pdo->getConnection();
    
    $form = new Formation($donnees);

    $form->setNumCert($donnees[0]);
    $form->setTitre($donnees[1]);
    $form->setDescription($donnees[2]);
    $form->setAuteur($donnees[3]);
    $form->setPlateforme($donnees[4]);
    $form->setDateCertif($donnees[5]);
    $form->setUrl($donnees[6]);
    $form->setUniversite($donnees[7]);
    //echo $form->getAuteur();

    foreach ($donnees as $key => $value) {
        //echo $value . "<br>";
    }

    

    $formation = new FormationManager($conn);
    if(isset($_POST['submit']))
    {
        $formation->insertOne($form);
    }
