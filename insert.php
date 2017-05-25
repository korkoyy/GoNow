<?php
	$con=mysqli_connect("localhost","root","","");
	// Check connection
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$userEmail = mysqli_real_escape_string($con, $_POST['email']);
	$userName = mysqli_real_escape_string($con, $_POST['userName']);
	$userPassword = mysqli_real_escape_string($con, $_POST['psw']);
	//$userPassword = mysqli_real_escape_string($con, $_POST['conPsw']);
	$Name = mysqli_real_escape_string($con, $_POST['name']);
	$userLastName = mysqli_real_escape_string($con, $_POST['lastName']);
	$userMobile = mysqli_real_escape_string($con, $_POST['phone']);
	$userAddress = mysqli_real_escape_string($con, $_POST['addr']);
	$userCity = mysqli_real_escape_string($con, $_POST['city']);


	$sql="INSERT INTO autoincrementid (email)
	VALUES ('$email')";
	mysqli_query($con, $sql);
	//////////////////////////////////////////////////////////////////////////////

	$result = $con->query("SELECT autoNumber FROM autoincrementid WHERE email='$email';");

	$outp = "[";
	while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
	    if ($outp != "[") {$outp .= ",";}
	    $outp .= '{"autoNumber":"'  . $rs["autoNumber"] . '",';
			$id=$rs["autoNumber"];
	}
	$outp .="]";

	if($id==''){ // ถ้าได้เป็นค่าว่าง หรือ null ก็แสดงว่ายังไม่มีข้อมูลในฐานข้อมูล
      $std_id="SD001";
  }else{
      $std_id="SD".sprintf("%03d",$id);//ถ้าไม่ใช่ค่าว่าง
  }

	//////////////////////////////////////////////////////////////////////////////
	$sql2="INSERT INTO User (userID, userEmail, userName, userPassword, Name, userLastName, userMobile ,userAddress ,userCity)
	VALUES ('$std_id', '$userEmail', '$userName', '$userPassword', '$Name', '$userLastName', '$userMobile' , '$userAddress' , '$userCity')";
	mysqli_query($con, $sql2);


	echo "1 record added";
	mysqli_close($con);

?>
