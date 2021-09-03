<%@ include file="sellerconnection.jsp" %>
<%@ include file="remove.jsp" %>
<% 
try{
 String uid = (String)session.getAttribute("seuid");
 String book = request.getParameter("bname");
 String writer = request.getParameter("wname");
 String number = request.getParameter("nbook");
 int i = Integer.parseInt(number);
 String query = "select * from "+uid+" where book=? and writer=?";
 PreparedStatement ps = cn.prepareStatement(query);
 ps.setString(1,book);
 ps.setString(2,writer);
 ResultSet rst = ps.executeQuery();
 if(rst.next()){
     String book2 = rst.getString(1);
     String writer2 = rst.getString(2);
     String number2 = rst.getString(3);
     int j = Integer.parseInt(number2);
 
   if(book2.equals(book) && writer2.equals(writer) && j>=i){
	   String query3 = "update "+uid+" set number=number-"+i+" where book=? and writer=?";
	   PreparedStatement ps3 = cn.prepareStatement(query3);
	   ps3.setString(1, book);
	   ps3.setString(2, writer);
	   ps3.executeUpdate();
	   %> <h2 align='center'>Book Removed</h2><%
	   return;
   }if(j<i) {
		 %> <h2 align='center'>Don't have enough book</h2><%
				 return;
			 }
 }else {
	 %> <h2 align='center'>Don't have book</h2><%
	 return;
 }
 }catch(Exception ex){out.print(ex);}
 %>
 