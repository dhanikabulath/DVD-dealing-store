<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>City DVD's</title>
<link href="css/main.css" rel="stylesheet" type="text/css">
<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function dropfun1() {
    document.getElementById("drop1").classList.toggle("show");
}
function dropfun2() {
    document.getElementById("drop2").classList.toggle("show");
}
function dropfun3() {
    document.getElementById("drop3").classList.toggle("show");
}
function dropfun4() {
    document.getElementById("drop4").classList.toggle("show");
}
function dropfun5() {
    document.getElementById("drop5").classList.toggle("show");
}

</script>
<style>
.show {display:block;}
</style>
</head>

<body background-image= "image.jpg">
<div id="wrapper">
  <div id="header_wrapper">
  	<div id="logo" style="text-align: center">Web Based DVD Dealing System</div>
    <div id="nav"></div>
  </div>
  <div id="content_wrapper">
    <iframe name="frame1" scrolling="yes" src="welcome.php"></iframe>
  	<div id="post_head"></div>
  </div>
  <div id="side_bar" style="float: right;">

    <?php

    if(isset($_POST["name"],$_POST["pass"])){
            if ($_POST["name"]=="admin" && $_POST["pass"]=="admin@123"){
                echo "<b> You have logged in as</b> <h1>Adminstrator</h1> ";
                echo '<script language="javascript">';
                echo 'alert("You Have Logged as the Admin Successfully");';  //not showing an alert box.
                echo '</script>';
                echo '<form action="index.php" method="post">
          
                <input type="submit" value="Logout">
                </form>';
                echo '<ul>
                <li><button onclick="dropfun1()">Employee ▼</button>
        	          <ul id="drop1" class="dropcontent">
           	    <li><a href="employee/add.php" target="frame1">Add</a></li>
                <li><a href="employee/update.php" target="frame1">Update</a></li>
                </ul>
                </li>

                <li><button onclick="dropfun2()">Customer ▼</button>
        	    <ul id="drop2" class="dropcontent">
            	<li><a href="customer/add.php" target="frame1">Add</a></li>
                <li><a href="customer/update.php" target="frame1">Update</a></li>
                <li><a href="customer/search.php" target="frame1">Search</a></li>
                </ul>
                </li>

                <li><button onclick="dropfun3()">DVD ▼</button>
                <ul id="drop3" class="dropcontent">
            	<li><a href="DVD/add.php" target="frame1">Add</a></li>
                <li><a href="DVD/update.php" target="frame1">Update</a></li>
                <li><button onclick="dropfun4()">Purchase ▼</button>
                	<ul id="drop4" class="dropcontent">
            			<li><a href="DVD/purchase/retail.php" target="frame1">Retail</a></li>
                		<li><a href="DVD/purchase/wholesale.php" target="frame1">Wholesale</a></li>
            		</ul>
                </li>
                <li><button onclick="dropfun5()">Return ▼</button>
                    <ul id="drop5" class="dropcontent">
                        <li><a href="DVD/Return/retail.php" target="frame1">Retail</a></li>
                        <li><a href="DVD/Return/wholesale.php" target="frame1">Wholesale</a></li>
                    </ul>
                </li>

                </ul>6
				+
                </li>


  	            </ul>';
         }
         else {
          require 'dbcon/user.php';
          require 'dbcon/dbcon.php';
 
          $username=$_POST['name'];
          $sql ="SELECT * FROM tb_emp WHERE user_name='$username'";
          $result=mysqli_query($conn,$sql);
          $row = $result->fetch_assoc();

          if ($username != "" && $row != "" && $row['user_name'] == $_POST['name'] && $row['user_pw'] == $_POST['pass']) {
                echo "<b> You have logged as</b> <h1>", $username, "</h1> ";
                echo '<script language="javascript">';
                echo 'alert("You Have Logged in as the ', $username, ' Successfully");';  
                echo '</script>';

             echo '<form action="index.php" method="post">
          
          <input type="submit" value="Logout">
      </form>';
             echo '<ul>
                <li><button onclick="dropfun1()">Employee ▼</button>
                    <ul id="drop1" class="dropcontent">
                
                <li><a href="employee/update.php" target="frame1">Update</a></li>
				<li><a href="employee/add.php" target="frame1">Add</a></li>
                </ul>
                </li>

                <li><button onclick="dropfun2()">Customer ▼</button>
              <ul id="drop2" class="dropcontent">
              <li><a href="customer/add.php" target="frame1">Add</a></li>
                
                <li><a href="customer/search.php" target="frame1">Search</a></li>
                </ul>
                </li>

                <li><button onclick="dropfun3()">DVD ▼</button>
                <ul id="drop3" class="dropcontent">
				<li><a href="DVD/add.php" target="frame1">Add</a></li>
                <li><a href="DVD/update.php" target="frame1">Update</a></li>
                <li><button onclick="dropfun4()">Purchase ▼</button>
                  <ul id="drop4" class="dropcontent">
                  <li><a href="DVD/purchase/retail.php" target="frame1">Retail</a></li>
                    <li><a href="DVD/purchase/wholesale.php" target="frame1">Wholesale</a></li>
                </ul>
                </li>
                <li><button onclick="dropfun5()">Return ▼</button>
                    <ul id="drop5" class="dropcontent">
                        <li><a href="DVD/Return/retail.php" target="frame1">Retail</a></li>
                        <li><a href="DVD/Return/wholesale.php" target="frame1">Wholesale</a></li>
                    </ul>
                </li>

                </ul>
                </li>


                </ul>';
          } else {
             echo '<script language="javascript">';
             echo 'alert("User Name and Password are wrong!");';  //not showing an alert box.
             echo '</script>';
             echo '<font color="red"><b>Please check User Name And Password!</b></font>';
             echo '<form action="index.php" method="post">
          User Name: <input type="text" name="name"><br>
          Password: <input type="password" name="pass"><br>
          <input type="submit">
          </form>';
          }




         }
 
     }


     else{
            echo'Welcome';
         echo '<form action="index.php" method="post">
          User Name: <input type="text" name="name"><br>
          Password: <input type="password" name="pass"><br>
          <input type="submit">
      </form>';
     }


      ?>


  </div>
  <div id="footer">
<div id="copyright">&copy; www.cityDVD.com  | KILD | 2017 | All Right Reserved</div>
  </div>
</div>
</body>
</html>
