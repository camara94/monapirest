<?php
    /*ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);*/
    require_once "../rest.php";
    require_once "../Database.php";
    require_once "../models/FormationManager.php";
    require_once "../controllers/Formation.php";

?>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<form  action="" method="POST" enctype="multipart/form-data" >
            <?php
                $pdo = new Database();
                $conn = $pdo->getConnection();

                $formM = new FormationManager($conn);
                $certif = $formM->read();
                echo "<select name='id'>";
                foreach ($certif as $key => $value) {
                    echo '<option value="'.$value["id"].'">'. $value['titre'] .'</option>';
                }
                echo "<select>";

                $certif2 = $formM->updateOne($_POST['id']);
            ?>
            <p>
                <label for="numCert"> Donnez le numéro du certif :</label> 
                <input type="text" name="numCert" id="numCert"  value="<?php echo $certif2['id'];?>"/>
            </p>

            <p>
                <label for="titre"> Donnez le titre du certif :</label> 
                <input type="text" name="titre" id="titre" value="<?php echo $certif2['titre'];?>" />
            </p>

            <p>
                <label for="description"> Donnez la description du certif :</label> 
                <textarea type="text" name="description" id="description" ><?php echo $certif2['description'];?></textarea>
            </p>

            <p>
                <label for="auteur"> Donnez la auteur du certif :</label> 
                <input type="text" name="auteur" id="auteur" value="<?php echo $certif2['auteur'];?>" />
            </p>

            <p>
                <label for="plateforme"> Donnez la plateforme du certif :</label> 
                <input type="text" name="plateforme" id="plateforme" value="<?php echo $certif2['plateforme'];?>" />
            </p>
            
            <p>
                <label for="dateCertif"> Donnez la dateCertif du certif :</label> 
                <input type="date" name="dateCertif" id="dateCertif" value="<?php echo $certif2['dateCertif'];?>" />
            </p>

            <p>
                <label for="universite"> Donnez la université du certif :</label> 
                <input type="text" name="universite" id="universite" value="<?php echo $certif2['universite'];?>"/>
            </p>

            <p>
                <label for="url"> Donnez la dateCertif du certif :</label> 
                <input type="file" name="url" id="url" value="<?php echo $certif2['url'];?>" />
            </p>
            <p>
                <input type="submit" value="Enregistrer" name="submit"/>
            </p>
        </form>
	</body>
</html>
<?php
    //$formM->update(array $form)
    $formM->update(["numCert"=>$_POST['numCert'], "titre"=>$_POST['titre'], 'description'=>$_POST['description'], 'auteur'=>$_POST['auteur'], 'plateforme'=>$_POST['plateforme'], 'dateCertif'=>$_POST['dateCertif'],'universite'=>$_POST['universite']]);
?>
