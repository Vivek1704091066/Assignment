<%@ include file="sellerconnection.jsp" %>
<%@ include file="add.jsp" %>
<% 
try{
 String uid = (String)session.getAttribute("seuid");
 String book = request.getParameter("bname");
 String writer = request.getParameter("wname");
 String number = request.getParameter("nbook");
 String price = request.getParameter("pbook");
 String query = "select * from "+uid+" where book=? and writer=?";
 PreparedStatement ps = cn.prepareStatement(query);
 ps.setString(1,book);
 ps.setString(2,writer);
 ResultSet rst = ps.executeQuery();
 if(rst.next()){
 String book2 = rst.getString(1);
 String writer2 = rst.getString(2);
 String price2 = rst.getString(4);
 int i = Integer.parseInt(number);
 if(book2.equals(book) && writer2.equals(writer) && price2.equals(price)){
	 String query3 = "update "+uid+" set number=number+"+i+" where book=? and writer=?";
	 PreparedStatement ps3 = cn.prepareStatement(query3);
	 ps3.setString(1, book);
	 ps3.setString(2, writer);
	 ps3.executeUpdate();
	 %> <h2 align='center'>Book added</h2><%
	 return;
 }
 }else {
	 String query2 = "insert into "+uid+" value(?,?,?,?)";
	 PreparedStatement ps2 = cn.prepareStatement(query2);
	 ps2.setString(1,book);
	 ps2.setString(2,writer);
	 ps2.setString(3,number);
	 ps2.setString(4,price);
	 ps2.executeUpdate();
	 %> <h2 align='center'>Book added</h2><%
	 return;
 }
 }catch(Exception ex){out.print(ex);}
 %>
 