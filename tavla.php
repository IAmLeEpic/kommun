<?php

	echo "<pre>" . print_r($_POST,1) . "</pre>";

	$titel = filter_input(INPUT_POST, "titel", FILTER_SANITIZE_SPECIAL_CHARS);
	$organ = filter_input(INPUT_POST, "organ", FILTER_SANITIZE_SPECIAL_CHARS);

	//
	try {
		$dbh = new PDO("mysql:host=localhost;dbname=kommunen;charset=utf8", "root", "", array(
			PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    	));
     }
    catch(PDOException $pe) {
        echo $pe->getMessage();
    }

    //om submit är sagt så spara i databasen
    if(isset($_POST['publicera'])){

    	$sql = "INSERT INTO anslagstavla(titel, organ, ansvarig, forvaringsplats, stub, uppsattning, sammantrade)
    	VALUES(:titel, :organ, :ansvarig, :forvaringsplats, :stub, :uppsattning, :sammantrade)";
    	
    	$stmt = $dbh->prepare($sql);
    	$stmt->bindParam(':titel', $_POST['titel'], PDO::PARAM_STR);
    	$stmt->bindParam(':organ', $_POST['organ'], PDO::PARAM_STR);
    	$stmt->bindParam(':ansvarig', $_POST['ansvarig'], PDO::PARAM_STR);
    	$stmt->bindParam(':forvaringsplats', $_POST['forvaringsplats'], PDO::PARAM_STR);
    	$stmt->bindParam(':stub', $_POST['stub'], PDO::PARAM_STR);
    	$stmt->bindParam(':uppsattning', $_POST['uppsattning'], PDO::PARAM_STR);
    	$stmt->bindParam(':sammantrade', $_POST['sammantrade'], PDO::PARAM_STR);

    	$stmt->execute();

    }

?>