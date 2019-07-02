<?php

class Database{
 
    // specify your own database credentials
    
    //local
    private $host = "localhost";
    private $db_name = "api";
    private $username = "root";
    private $password = "";



    public $connexion;
 
    // get the database connection
    public function getConnection(){
 
        $this->connexion = null;
 
        try{ 
            $this->connexion = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name.";", $this->username, $this->password);
            $this->connexion->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            //$this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }
 
        return $this->connexion;
    }
}
?>