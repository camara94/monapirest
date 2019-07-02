<?php
  class FormationManager
  {
      private $_db;

      // constructor with $db as database connection
        public function __construct(PDO $db){
            $this->_db = $db;        
        }


        public function read(){
            $listForm = [];
            // select all query
            $query = 'SELECT * FROM formation';
        
            // prepare query statement
            $request = $this->_db->prepare($query);
        
            // execute query
            $request->execute();
            while($donnees = $request->fetch()) {
                array_push($listForm  , $donnees);
            }
            return $listForm;
        }


        
        public function getOne($id){
            $listForm  = [];
            // select all query
            $query = 'SELECT * FROM formation WHERE id = ' . (int)$id;;
        
            // prepare query statement
            $request = $this->_db->prepare($query);
        
            // execute query
            $request->execute();
            while($donnees = $request->fetch()) {
                array_push($listForm  , $donnees);
            }
            return $listForm[0];
        }

        

        
        public function insertOne(Formation $form)
        { 
            $numCert = $form->getNumCert();
            $titre = $form->getTitre();
            $description = $form->getDescription();
            $auteur = $form->getAuteur();
            $plateforme = $form->getPlateforme();
            $dateCertif = $form->getDateCertif();
            $universite = $form->getUniversite();
            $url =  $form->getUrl();

            $file_name = $_FILES["url"]['name'];
            $extension = strrchr($file_name, '.');
            $extension = strtolower($extension);
            $file_dest = "../images/certif/" . $file_name;

            $extension_autorisees = ['.png', '.jpg', '.jpeg', '.gif', '.pdf'];

            if (in_array($extension, $extension_autorisees)) {
                $url ="";
                if ($_FILES["url"]["size"] < 5000000) {
                    if (move_uploaded_file($_FILES["url"]["tmp_name"], $file_dest)) {
                        $url= 'http://localhost/api' . substr($file_dest, 0, 2);
                        $form->setUrl($url);

                        $sql = "INSERT INTO `formation`(`numCert`, `titre`, `description`, `auteur`, `plateforme`, `dateCertif`, `url`, `universite`) VALUES (:numCert,:titre, :description, :auteur, :plateforme, :dateCertif, :url, :universite)";
                        $request = $this->_db->prepare($sql);
                        $request->bindValue(":numCert", $numCert);
                        $request->bindValue(":titre", $titre);
                        $request->bindValue(":description", $description);
                        $request->bindValue(":auteur", $auteur);
                        $request->bindValue(":plateforme", $plateforme);
                        $request->bindValue(":dateCertif", $dateCertif);   
                        $request->bindValue(":universite", $universite);
                        $request->bindValue(":url", $url);

                        $request->execute();
                    }
                }
            }
           
        }


        public function updateOne($id)
        { 
            $form = $this->getOne($id);
            $numCert = $form['numCert'];
            $titre = $form['titre'];
            $description = $form['description'];
            $auteur = $form['auteur'];
            $plateforme = $form['plateforme'];
            $dateCertif = $form['dateCertif'];
            $universite = $form['universite'];
            $url =  $form['url'];

            $file_name = $_FILES["url"]['name'];
            $extension = strrchr($file_name, '.');
            $extension = strtolower($extension);
            $file_dest = "../images/certif/" . $file_name;

            $extension_autorisees = ['.png', '.jpg', '.jpeg', '.gif', '.pdf'];

            if (in_array($extension, $extension_autorisees)) {
                $url ="";
                if ($_FILES["url"]["size"] < 5000000) {
                    if (move_uploaded_file($_FILES["url"]["tmp_name"], $file_dest)) {
                        $url= 'http://localhost/api'. $file_dest;

                        $sql = "UPDATE  formation sET numCert=:numCert, titre=:titre, description=:description, auteur=:auteur, plateforme=:plateforme, dateCertif=:dateCertif,, url=:url, universite=:universite";
                        $request = $this->_db->prepare($sql);
                        $request->bindValue(":numCert", $numCert);
                        $request->bindValue(":titre", $titre);
                        $request->bindValue(":description", $description);
                        $request->bindValue(":auteur", $auteur);
                        $request->bindValue(":plateforme", $plateforme);
                        $request->bindValue(":dateCertif", $dateCertif);   
                        $request->bindValue(":universite", $universite);
                        $request->bindValue(":url", $url);

                        $request->execute();
                    }
                }
            }
           return $form;
        }



        public function update(array $form)
        { 
            $numCert = $form['numCert'];
            $titre = $form['titre'];
            $description = $form['description'];
            $auteur = $form['auteur'];
            $plateforme = $form['plateforme'];
            $dateCertif = $form['dateCertif'];
            $universite = $form['universite'];
            $url =  $form['url'];

            $file_name = $_FILES["url"]['name'];
            $extension = strrchr($file_name, '.');
            $extension = strtolower($extension);
            $file_dest = "../images/certif/" . $file_name;

            $extension_autorisees = ['.png', '.jpg', '.jpeg', '.gif', '.pdf'];

            if (in_array($extension, $extension_autorisees)) {
                $url ="";
                if ($_FILES["url"]["size"] < 5000000) {
                    if (move_uploaded_file($_FILES["url"]["tmp_name"], $file_dest)) {
                        $url= 'http://localhost/api'. substr($file_dest,0, 2);

                        $sql = "UPDATE  formation sET numCert=:numCert, titre=:titre, description=:description, auteur=:auteur, plateforme=:plateforme, dateCertif=:dateCertif,, url=:url, universite=:universite";
                        $request = $this->_db->prepare($sql);
                        $request->bindValue(":numCert", $numCert);
                        $request->bindValue(":titre", $titre);
                        $request->bindValue(":description", $description);
                        $request->bindValue(":auteur", $auteur);
                        $request->bindValue(":plateforme", $plateforme);
                        $request->bindValue(":dateCertif", $dateCertif);   
                        $request->bindValue(":universite", $universite);
                        $request->bindValue(":url", $url);

                        $request->execute();
                    }
                }
            }
        }










        public function uploader()
        {
            
            $file_name = $_FILES["url"]['name'];
            $extension = strrchr($file_name, '.');
            $extension = strtolower($extension);
            $file_dest = "api/images/certif/" . $file_name;

            $extension_autorisees = ['.png', '.jpg', '.jpeg', '.gif', '.pdf'];

            if (in_array($extension, $extension_autorisees)) {
                $url ="";
                if ($_FILES["url"]["size"] > 5000000) {
                    if (move_uploaded_file($_FILES["url"]["tmp_name"], $file_dest)) {
                        $url= 'http://localhost/' . $file_dest;
                    }
                }
            }
            return $url;
            
        }
        

        public function readOne($id=0, $titre="", $auteur="", $plateforme="")
        {
            $listForm  = [];
            if ($id > 0)
              $query = "SELECT * FROM formation WHERE id = " . (int)$id;
            else if ($auteur != null)
              $query = "SELECT * FROM formation WHERE auteur LIKE '%" . $auteur ."%'";
            else if ($plateforme != null)
              $query = "SELECT * FROM formation WHERE plateforme LIKE UPPER('%" . $plateforme ."%')";
               // prepare query statement
            $request = $this->_db->prepare($query);
            $request->execute();
            while($donnees = $request->fetch()) {
                array_push($listForm, $donnees);//new Sujet($donnees));
            }
            return $listForm;
        }
  }
  


