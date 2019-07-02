<?php
    class  Departement
    {
        private $_id,
                $_nom,
                $_univId,
                $_sujets = [];

                public function __construct(array $donnees)
                {
                    $this->hydrate($donnees);
                    $this->setSujet();
                }
            
                public function hydrate(array $donnees)
                {
                    foreach($donnees as $key => $value) {
                        $method = 'set' . ucfirst($key);
            
                        if(method_exists($this, $method)) {
                            $this->$method($value);
                        }
                    }
                }
            
                public function setId($id)
                {
                    $id = (int)$id;
                    $this->_id = $id;
                }
            
                public function setNom($nom)
                {
                    if (is_string($nom) && strlen($nom) <= 255) {
                        $this->_nom = $nom;
                    }
                }
            
            
                public function setUnivId($univId)
                {
                    $univId = (int)$univId;
                    $this->_univId = $univId;
                }

                public function setSujet($id = 0)
                { 
                    $id = $this->_id;
                    $pdo = new Database();
                    $sujet = new SujetManager($pdo->getConnection());

                    foreach ($sujet->getAll($id) as $key => $value) {
                    array_push($this->_sujets, $value);
                    }
                }
            
                public function getId() {return $this->_id;}
                public function getNom() {return $this->_nom;}
                public function getUnivId() {return $this->_univId;}
                public function getSujet() {return $this->_sujets;}
    }
    