<?php
	header('Content-Type: application/json');
    
	include_once 'includes/connection.php';
    include_once 'includes/person.php';
	
	if (isset($_GET['type'])){
		$type = $_GET['type'];
	}
	else{
		$type = 'All';
	}
	
	$person = new Person;
	echo $person->get_person(strtoupper($type));
	

?>