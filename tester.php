<?php
 
 $authpass = "1234";
if( !(isset($_POST["authpass"]) && $_POST["authpass"] == $authpass) ){
    echo "<form method='POST'><center>Password: <input name='authpass' type='password' placeholder='***' /> <input value='Ok' type='submit' /> </center></form>";
    die();
}

    
    //local
     $host = "localhost";
     $db_name = "api";
     $username = "root";
     $password = "";
     $port = 35832;


   
    // get the database connection
    
 
        $connexion = null;
 
        try{ 
            $connexion = new PDO("mysql:host=" . $host .";dbname=" . $db_name.";", $username, $password);
            $connexion->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            $connexion->exec("set names utf8");

                $listSujet = [];
                // select all query
                $query = 'SELECT * FROM sujet' ;
             
                // prepare query statement
                $request = $connexion->prepare($query);
             
                // execute query
                $request->execute();
                while($donnees = $request->fetch()) {
                    array_push( $listSujet , $donnees);

                    foreach ($listSujet as $key => $value) {
                        echo "titre". $value['universite']."<br>";
                    }
                }


            
        }catch(PDOException $exception){
            echo "Connection error: " . $exception->getMessage();
        }

?>


