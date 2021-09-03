<%
 String name = (String)session.getAttribute("cename");
 if(name==null){
	response.sendRedirect("http://localhost:8080/Assignment/costumerlogin.jsp"); 
	return;
 }
%>
<html>
 <head>
   <link href = "style2.css" rel="stylesheet">
 </head>
 <body background='image14.jpg'>
 <p class='na' align='right'>Hello <%=name %></p>
  <table align='center'>
   <tr>
    <td class='he'>Online Bookstore</td>
   </tr>
   <tr>
    <td>-----------------------------------------------------</td>
   </tr>
  </table>

  <br>
  <table align='center'>
    <tr>
      <td><a class='pc' href='home.jsp'>Home</a>
      <td><a class='pc' href='mybook.jsp'>My Books</a>
      <td><a class='pc' href='search.jsp'>Search Book</a>
      <td><a class='pc' href='purchased.jsp'>Purchased Book</a>
      <td><a class='pc' href='logout.jsp'>Logout</a>
    </tr>
  </table>
 </body>
</html>