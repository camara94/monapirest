<?php 
class Universite
{
    //Les attributs
    private $id,
            $_nom,
            $_departements = [],
            $_adresse,
            $_ville,
            $_pays;

    public function __construct(array $donnees)
    {
        $this->hydrate($donnees);
        $this->setDepartement();
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

    public function getId() {return $this->_id;}
    public function getNom() {return $this->_nom;}
    public function getDepartement() {return $this->_departements;}
    public function getAdresse() {return $this->_adresse;}
    public function getVille() {return $this->_ville;}
    public function getPays() {return $this->_pays;}

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

    public function setDepartement($id = 0)
    { 
        $id = $this->_id;
        $pdo = new Database();
        $departement = new DepartementManager($pdo->getConnection());

        foreach ($departement->getAll($id) as $key => $value) {
           array_push($this->_departements, $value);
        }
    }

    public function setAdresse($adresse)
    {
        if (is_string($adresse) && strlen($adresse) <= 255) {
            $this->_adresse = $adresse;
        }
    }

    public function setVille($ville)
    {
        if (is_string($ville) && strlen($ville) <= 255) {
            $this->_ville = $ville;
        }
    }

    public function setPays($pays)
    {
        if (is_string($pays) && strlen($pays) <= 255) {
            $this->_pays = $pays;
        }
    }

    
}
