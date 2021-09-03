<%@ include file="menu.jsp" %>
 <head>
   <link href = "style2.css" rel="stylesheet">
 </head>
 <form action='add2.jsp'>
<table class='ta'>
 <tr>
 <td class='he' align='center'>Add Book</td>
 </tr>
  <tr>
 <td>--------------------------------</td>
 </tr>
  <tr>
   <td class='fo'>Name of book : </td>
   <td><input class='bk' type='text' name='bname' required></td>
  </tr>
  <tr>
  <td class='fo'>Name of writter :</td>
  <td><input class='bk' type='text' name='wname' required></td>
  </tr>
  <tr>
  <td class='fo'>Number of book :</td>
  <td><input class='bk' type='number' name='nbook' required></td>
  </tr>
  <tr>
  <td class='fo'>Price of book(Rs) :</td>
  <td><input class='bk' type='number' name='pbook' required></td>
  </tr>
  <tr>
   <td colspan='2' align='right'>
   <input class='bt' type='submit' value='Add'>
   </td>
  </tr>
 </table>
 </form>