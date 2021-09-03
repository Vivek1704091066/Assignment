<%@ include file="connection.jsp"%>
<% 
try{
 	Statement statement = cn1.createStatement();
 	String query2 = "create table seller(uid varchar(30),password varchar(30),name varchar(30))";
 	statement.executeUpdate(query2);
 	}catch(Exception ex){}
%>
<html>
<head>
  <link href = "CSS/style.css" rel="stylesheet">
</head>
<form action='newseller.jsp' method='post'>
<body background='image/image9.jpg'>
<table align='center'>
    <tr>
      <td><a class='lis' href='costumersignup.jsp'>Costumer-Sign up</a></td>
    </tr>
  </table>
 <table class='tap'>
    <tr>
  <td class='he' align='center'>.....Seller-Sign Up.....</td>
 </tr>
 </table>
 <table class='ta'>
   <tr>
   <td class='fo'>Name : </td>
   <td><input class='bk' type='text' name='sename' placeholder='Name' required></td>
  </tr>
  <tr>
   <td class='fo'>User Id : </td>
   <td><input class='bk' type='text' name='seuid' placeholder='User ID' required></td>
  </tr>
  <tr>
  <td class='fo'>Password : </td>
  <td><input class='bk' type='password' name='sepass' placeholder='Password' required></td>
  </tr>
  <tr>
   <td>
   <a href="sellerlogin.jsp" class='li'>Already Have A/C</a>
   </td>
   <td colspan='2' align='right'>
   <input class='bt' type='submit' value='Sign In'>
   </td>
  </tr>
 </table>
</body>
</form>
</html>