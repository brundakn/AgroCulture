<?php session_start();
if(isset($_POST['Submit'])){
$logins = array('Admin' => '123456','username1' => 'password1','username2' => 'password2');
$Username = isset($_POST['Username']) ? $_POST['Username'] : '';
$Password = isset($_POST['Password']) ? $_POST['Password'] : '';
if (isset($logins[$Username]) && $logins[$Username] == $Password){
$_SESSION['UserData']['Username']=$logins[$Username];
header("location:index.php");
exit;
} else {
$msg="<span style='color:red'>Invalid Login Details</span>";
}
}
?>
<form style ="height:550px; width:1250px; background-image: url(https://media.istockphoto.com/photos/rice-field-and-sky-background-at-sunset-time-with-sun-rays-organic-picture-id1184752626);" action="" method="post" name="Login_Form">
  <table border="0" align="center" cellpadding="5" cellspacing="1" class="Table">
    <?php if(isset($msg)){?>
    <tr>
      <td colspan="2" align="center" valign="center"><?php echo $msg;?></td>
    </tr>
    <?php } ?>
    <tr>
      <td colspan="2" align="left" valign="center"><h3>Login</h3></td>
    </tr>
    <tr>
      <td align="right" valign="top">Username</td>
      <td><input name="Username" type="text" class="Input"></td>
    </tr>
    <tr>
      <td align="right">Password</td>
      <td><input name="Password" type="password" class="Input"></td>
    </tr>
    <tr>
      <td> </td>
      <td><input name="Submit" type="submit" value="Login" class="Button3"></td>
    </tr>
  </table>
</form>
