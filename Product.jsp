<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ProductServlet">
	<table border="3px">
		<tr>
			<td>Product Id</td>
			<td><input type="text" name="pId" ></td>
		</tr>
		<tr>
			<td>Product Name</td>
			<td><input type="text" name="pName" ></td>
		</tr>
		<tr>
			<td>Product Price</td>
			<td><input type="text" name="pPrice" ></td>
		</tr>
		<tr>
			<td>Product Qty</td>
			<td><input type="text" name="pQty" ></td>
		</tr>
	</table>
<a href="Confirm.jsp"><button name="Enter" >Enter</a>

</form>

</body>
</html>