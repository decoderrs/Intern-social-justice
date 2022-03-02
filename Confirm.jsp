<%@page import="Shopping.ShoppingDao"%>
<%@page import="Shopping.Product"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm!!</title>
<style type="text/css">
	#div1{
		background: #91C483;
	}
</style>
</head>
<body>
<h1>Confirm Order!!!</h1>
<%List<Product>prd=null; %>
<%
	ShoppingDao sd=new ShoppingDao();
	prd=(List<Product>)session.getAttribute("prodlist");
	
	//prd=sd.ReturnBill();
%>
<table border=3px id="bill" bordercolor="blue">

	<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Product Price</th>			
			<th>Product Qty</th>
	</tr>
<%for(Product p:prd){ %>
	<tr>
			<td><%=p.getpId()%></td>
			<td><%=p.getpName()%> </td>
			<td><%=p.getpPrice()%> </td>
			<td><%=p.getpQty()%> </td>
		</tr>	
	<%} %>
	</table>	
	
<div id="div1">
<%out.println("Do you want to add more items?");%><br>
<a href="Product.jsp">YES</a><br>
<a href="BillServlet">BILL</a><br>
</div>

</body>
</html>