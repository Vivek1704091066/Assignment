<%@ include file="connection.jsp"%>
<% 
try{
	Statement statement = cn2.createStatement();
	String query2 = "create table costumer(uid varchar(30),password varchar(30),name varchar(30))";
	statement.executeUpdate(query2);
	}catch(Exception ex){}
 %>
<html>
<head>
  <link href = "CSS/style.css" rel="stylesheet">
</head>
<form action='costumervaliduser.jsp' method='post'>
<body background='image/image9.jpg'>
<table align='center'>
    <tr>
      <td><a class='lis' href='sellerlogin.jsp'>Seller-Login</a></td>
    </tr>
  </table>
 <table class='tap'>
  <tr>
 <td class='he' align='center'>..Costumer-Login..</td>
 </tr>
 </table>
 <table class='ta'>
  <tr>
   <td class='fo'>User Id : </td>
   <td><input class='bk' type='text' name='ceuid' placeholder='User ID' required></td>
  </tr>
  <tr>
  <td class='fo'>Password : </td>
  <td><input class='bk' type='password' name='cepass' placeholder='Password' required></td>
  </tr>
  <tr>
  <td>
   <a href="costumersignup.jsp" class='li'>Sign Up</a>
  </td>
   <td colspan='2' align='right'>
   <input class='bt' type='submit' value='Login'>
   </td>
  </tr>
 </table>
</body>
</form>
</html>