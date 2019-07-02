<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<form  action="insererFormation.php" method="POST" enctype="multipart/form-data" >
            <p>
                <label for="numCert"> Donnez le numéro du certif :</label> 
                <input type="text" name="numCert" id="numCert" />
            </p>

            <p>
                <label for="titre"> Donnez le titre du certif :</label> 
                <input type="text" name="titre" id="titre" />
            </p>

            <p>
                <label for="description"> Donnez la description du certif :</label> 
                <textarea type="text" name="description" id="description" > </textarea>
            </p>

            <p>
                <label for="auteur"> Donnez la auteur du certif :</label> 
                <input type="text" name="auteur" id="auteur" />
            </p>

            <p>
                <label for="plateforme"> Donnez la plateforme du certif :</label> 
                <input type="text" name="plateforme" id="plateforme" />
            </p>
            
            <p>
                <label for="dateCertif"> Donnez la dateCertif du certif :</label> 
                <input type="date" name="dateCertif" id="dateCertif" />
            </p>

            <p>
                <label for="universite"> Donnez la université du certif :</label> 
                <input type="text" name="universite" id="universite" />
            </p>

            <p>
                <label for="url"> Donnez la dateCertif du certif :</label> 
                <input type="file" name="url" id="url" />
            </p>
            <p>
                <input type="submit" value="Enregistrer" name="submit"/>
            </p>
        </form>
	</body>
</html>

