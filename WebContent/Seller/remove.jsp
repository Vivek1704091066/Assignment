<%@ include file="menu.jsp" %>
 <head>
   <link href = "style2.css" rel="stylesheet">
 </head>
 <form action='remove2.jsp'>
<table class='ta'>
 <tr>
 <td class='he' align='center'>Remove Book</td>
 </tr>
  <tr>
 <td>-------------------------------------------</td>
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
   <td colspan='2' align='right'>
   <input class='bt' type='submit' value='Remove'>
   </td>
  </tr>
 </table>
 </form>