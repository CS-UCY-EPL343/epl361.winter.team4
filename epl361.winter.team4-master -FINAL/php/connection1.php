<?php

#starts a new session
session_start();

#includes a database connection
include 'connection.php';

#catches email/password submitted by html form
$Email = $_POST['Email'];
$Password = $_POST['Password'];

#checks if the html form is filled
if(empty($_POST['Email']) || empty($_POST['Password'])){
    echo "Fill all the fields!";
}else{

#searches for Email and password in the database
$query = "SELECT * FROM [DATABASE_NAME[achrys16]].[dbo].[MEMBER] WHERE Email='{$Email}' AND"
         ."Password='{$Password}' AND active='1'";
$result = sqlsrv_query($conn, $query);  //$conn is your connection in 'connection.php'

#checks if the search was made
if($result === false){
     die( print_r( sqlsrv_errors(), true));
}

#checks if the search brought some row and if it is one only row
if(sqlsrv_has_rows($result) != 1){
       echo "Email/password not found";
}else{

#creates sessions
    while($row = sqlsrv_fetch_array($result)){
       $_SESSION['Id'] = $row['Id'];
       $_SESSION['FullName'] = $row['FullName'];
       $_SESSION['Email'] = $row['Email'];
       $_SESSION['Password'] = $row['Password'];
	   $_SESSION['Address'] = $row['Address'];
	   $_SESSION['Telephone Number'] = $row['Telephone Number'];

    }
#redirects Email
    header("Location: restrict.php");
	exit();
}
}

?>