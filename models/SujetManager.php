<?php

class SujetManager {
 
    // database connection and table name
    private $_db;
    
 
    // constructor with $db as database connection
    public function __construct(PDO $db){
        $this->_db = $db;
    }


    public function read(){
        $listSujet = [];
        // select all query
        $query = 'SELECT * FROM sujet';
     
        // prepare query statement
        $request = $this->_db->prepare($query);
     
        // execute query
        $request->execute();
        while($donnees = $request->fetch()) {
            array_push( $listSujet , $donnees);
        }
        return $listSujet;
    }


    public function getAll($id ){
        $listSujet = [];
        // select all query
        $query = 'SELECT * FROM sujet WHERE departementId = ' . (int)$id;;
     
        // prepare query statement
        $request = $this->_db->prepare($query);
     
        // execute query
        $request->execute();
        while($donnees = $request->fetch()) {
            array_push( $listSujet , new Sujet($donnees));
        }
        return $listSujet;
    }

    public function readOne($id=0, $cession="", $departement="", $semestre=""){
        $listSujet = [];
        // select all query
        if ($id > 0)
            $query = "SELECT * FROM sujet WHERE id = " . (int)$id;
        else if ($cession != null)
            $query = "SELECT * FROM sujet WHERE cession = '" . $cession ."'";
        else if ($type != null)
            $query = "SELECT * FROM sujet WHERE type LIKE UPPER('%" . $type ."%')";
        else if ($departement != null)
            $query = "SELECT * FROM sujet WHERE departement LIKE UPPER('%" . $departement ."%')";
        else if ($semestre != null)
            $query = "SELECT * FROM sujet WHERE semestre = UPPER('" . $semestre ."')";
        // prepare query statement
        $request = $this->_db->prepare($query);
        // execute query
        $request->execute();
        while($donnees = $request->fetch()) {
            array_push($listSujet , $donnees);//new Sujet($donnees));
        }
        return $listSujet;
    }
}