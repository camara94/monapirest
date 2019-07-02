<?php
    
    class DepartementManager {
        private $_db;

        public function __construct(PDO $db)
        {
            $this->_db = $db;
        }

        public function getAll($univId)
        {
           $listDepartement = [];
           $request = $this->_db->prepare("SELECT * FROM Departement WHERE univId = " . $univId);
           $request->execute();
           while($donnees = $request->fetch()) {
               array_push($listDepartement, $donnees);//new Departement($donnees));
           }
           
           return $listDepartement;
        }
    }
?>