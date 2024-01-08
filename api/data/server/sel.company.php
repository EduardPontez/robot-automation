<?php
	header('Content-Type: application/json; charset=utf-8');
	setlocale( LC_ALL, 'pt_BR.utf-8', 'pt_BR', 'Portuguese_Brazil');
    
	include_once 'includes/connection.php';
    include_once 'includes/company.php';
	
	if (isset($_GET['type'])){
		$type = $_GET['type'];
	}
	else{
		$type = 'All';
	}
	
	$company = new Company;
	echo $company->get_company(strtoupper($type));
	

?>