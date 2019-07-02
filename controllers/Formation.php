<?php
    class Formation 
    {
        private $_id,
                $_numCert,
                $_titre,
                $_description,
                $_auteur,
                $_plateforme,
                $_dateCertif,
                $_url,
                $_universite;

        public function __construct(array $donnees)
        {
             $this->hydrate($donnees);        
        }

        public function hydrate(array $donnees)
        {
            foreach ($donnees as $key => $value)
            {
                $method = 'set'.ucfirst($key);
                
                if (method_exists($this, $method))
                {
                    $this->$method($value);
                }
            }
        }
  

        public function getId() {return $this->_id;}
        public function getTitre() {return $this->_titre;}
        public function getNumCert() {return $this->_numCert;}
        public function getDescription() {return $this->_description;}
        public function getAuteur() {return $this->_auteur;}
        public function getPlateforme() {return $this->_plateforme;}
        public function getDateCertif() {return $this->_dateCertif;}
        public function getUrl() {return $this->_url;}
        public function getUniversite() {return $this->_universite;}

        public function setId($id) {
            $id = (int)$id;
            $this->_id = $id;
        }
        public function setTitre($titre) {
            if ( is_string($titre)) {
                $this->_titre = $titre; 
            }
        }
        public function setNumCert($numCert) {
            if ( is_string($numCert)) {
                $this->_numCert = $numCert; 
            }
        }
        public function setDescription($description) {
            if (is_string($description)) {
                $this->_description = $description;
            }
        }
        public function setAuteur($auteur) {
            if (is_string($auteur)) {
                $this->_auteur = $auteur;
            }
        }
        public function setPlateforme($plateforme) {
            if (is_string($plateforme)) {
                $this->_plateforme = $plateforme;
            }
        }
        public function setDateCertif($dateCertif) {
            $this->_dateCertif = $dateCertif;
        }
        public function setUrl($url) {
            if (is_string($url)) {
                $this->_url = $url;
            }
        }

        public function setUniversite($universite) {
            if (is_string($universite)) {
                $this->_universite = $universite;
            }
        }
    }
    