<?php
    
    class UniversiteManager {
        private $_db;

        public function __construct(PDO $db)
        {
            $this->_db = $db;
        }

        public function getAll()
        {
           $listUniversite = [];
           $request = $this->_db->prepare("SELECT * FROM universite");
           //('SELECT universite.*, departement.* FROM Universite INNER JOIN Departement ON universite.id=departement.univId');
           $request->execute();
           while($donnees = $request->fetch()) {
               array_push( $listUniversite , new Universite($donnees));
           }
           
           return  $listUniversite ;
        }

        public function readOne($id=0, $nom=""){
 
            // select all query
            if ($id > 0)
                $query = "SELECT * FROM universite WHERE id = " . (int)$id;
            else if ($nom != null)
                $query = "SELECT * FROM universite WHERE nom LIKE '%" . $nom ."%'";
            $request = $this->_db->prepare($query);
            $request->execute();
            // execute query
    
            return $request->fetchAll();
        }
    }
?>