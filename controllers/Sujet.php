<?php
class Sujet {
    // object properties
    private $_id;
    private $_title;
    private $_annee;
    private $_url;
    private $_type;
    //private $_departements;
    
 
    // constructor with $db as database connection
    public function __construct(array $donnees){
        $this->hydrate($donnees);
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

    public function getId() { return $this->_id;}
    public function getUniversite() { return $this->_universitaire;}
    public function getCession() { return $this->_cession;}
    public function getEnseignant() { return $this->_enseignant;}
    public function getUrl() { return $this->_url;}
    public function getType() { return $this->_type;}
    public function getDepartement() { return $this->_departements;}
    public function getSesmestre() { return $this->_departements;}

    public function setId($id)
    {
        $id = (int)$id;
        $this->_id = $id;
    }

    public function setUniversite($universite)
    {
        if (is_string($universite)) {
            $this->_universite = $universite;
        }
    }

    public function setSession($session)
    {
        if (is_string($session)) {
            $this->_session = $session;
        }
    }

    public function setEnseignant($enseignant)
    {
        if (is_string($enseignant)) {
            $this->_enseignant = $enseignant;
        }
    }

    public function setDepartement($departement)
    {
        if (is_string($departement)) {
            $this->_departement = $departement;
        }
    }


    public function setUrl($url)
    {
        if (is_string($url)) {
            $this->_url = $url;
        }
    }

    public function setType($type)
    {
        if (is_string($type)) {
            $this->_type = $type;
        }
    }
}