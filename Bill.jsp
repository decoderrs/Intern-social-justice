<%@page import="Shopping.ShoppingDao"%>
<%@page import="Shopping.BillObject"%>
<%@page import="Shopping.Product"%>
<%@page import="Shopping.BillObject" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> 
</head>
<body>
<form action="BillServlet">

</form>
<%
	BillObject bobj=null;
	List<Product> pro=null;
%>
	<%	
if(!session.isNew()){
	//pro= //(List<Product>)session.getAttribute("prodlist");
	ShoppingDao sd=new ShoppingDao();
	pro=sd.ReturnBill();
	%>
<table border=3px id="bill" bordercolor="488FB1">

	<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Price</th>			
			<th>Product Qty</th>
	</tr>
<%for(Product p:pro){ %>
	<tr>
			<td><%=p.getpId()%></td>
			<td><%=p.getpName()%> </td>
			<td><%=p.getpPrice()%> </td>
			<td><%=p.getpQty()%> </td>
		</tr>	
		<%} %>	

</table>
<%bobj=(BillObject)session.getAttribute("fbill"); %>
<table border=3px id="bill" bordercolor="488FB1">

	<tr>
			<th>Total</th>
			<td><%=bobj.getTotal() %></td>
	</tr>
	<tr>
			<th>CGST</th>
			<td><%=bobj.getCgst() %></td>
	</tr>
	<tr>
			<th>Product Price</th>			
			<td><%=bobj.getSgst() %></td>
	</tr>
	<tr>
			<th>Product Qty</th>
			<td><%=bobj.getFinaltotal() %></td>
	</tr>
	</table>
<%sd.clearBill(); %>
	<%} %>
</body> 
</html>