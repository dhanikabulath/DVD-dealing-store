<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>city DVD's</title>
<link href="./css/iframe.css" rel="stylesheet" type="text/css">
<style type="text/css">
#content table {
	margin-top: 30px;
	font-size: 15px;
	font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;
}
td p #button , td p #button2{
	padding-right: 10px;
	padding-left: 10px;
	margin-right: 115px;
}
tr {
	text-align: right;
}
</style>
</head>

<body>
<div id="content">
  <div id="frame_head">Welcome to Web Based DVD Dealing System
  </div>
<form method="post" action="">
  <table width="500px" align="center"> 
    <tbody>
      <tr>
          <td>
              <img align="center" src="img/image.jpg" width="80%" height="80%">
          </td>



      </tr>
      <tr>
          <td>
              <h1 style="text-align: center">Please Login To Proceed</h1>
          </td>



      </tr>
    </tbody>
  </table>
</form>
<div class="form">
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="welcome.php" method="post">
			
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Name<span class="req">*</span>
              </label>
              <input name="name" type="text" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                NIC No.<span class="req">*</span>
              </label>
              <input name="nic" type="text"required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input name="email" type="email"required autocomplete="off"/>
          </div>
          
         
		  
		   <div class="field-wrap">
            <label>
              Contact<span class="req">*</span>
            </label>
            <input name="contact" type="integer"required autocomplete="off"/>
          </div>

		  <div class="field-wrap">
            <label>
              password<span class="req">*</span>
            </label>
            <input name="password" type="password"required autocomplete="off"/>
          </div> 
          
		  <div class="field-wrap">
            <label>
              Adress<span class="req">*</span>
            </label>
            <input name="addr" type="text"required autocomplete="off"/>
          </div> 
		  
          <button name="submit" type="submit" class="button button-block"/>Get Started</button>
          <?php
		    include 'user.php';
			

$conn = mysqli_connect($servername, $username,"", $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


		    if (isset($_POST['submit'])) {
				$name = $_POST['name'];
				$nic = $_POST['nic'];
				$email = $_POST['email'];
				$password = $_POST['password'];
				$contact = $_POST['contact'];
				$add = $_POST['addr'];
				echo'User registered';
				}else{
					echo'User not registered';
				}
				$sql = "INSERT INTO tb_cus (cus_name, cus_nic,cus_email,cus_add,cus_contact,cus_passw)
VALUES ('$name', '$nic','$email','$add','$contact','$password')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
}else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

				
			?>

					
		 
          </form>

        </div>       
        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
</div>

</body>
</html>
