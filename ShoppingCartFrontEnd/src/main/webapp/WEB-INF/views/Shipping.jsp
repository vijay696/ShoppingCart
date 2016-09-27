<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Please enter your Shipping details </h4> <br><br>

<form:form action="ship"  method="post">
		<table>
			<tr>
				<td>name</td>
				<td><input type="text" name="name" required>
			
				</td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>contact number</td>
				<td><input type="text" name="contact" required></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>address line 1</td>
				<td><input type="text" name="ad1" required></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>address line 2</td>
				<td><input type="text" name="ad2" required></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="mail" required></td>
			</tr>
			<br>
			<tr>
				<td>city</td>
				<td><input type="text" width="20" height="10" name="city" required></td>
			</tr>
			
			<tr>
				<td>state</td>
				<td><input type="text" width="20" height="10" name="state" required></td>
			</tr>
			<tr>
				<td>zip code</td>
				<td><input type="text" width="20" height="10" name="zip" required></td>
			</tr>
			
			

			<tr>
			<td>
				<%-- <a href="<c:url value="/Sthanks"/>"><li> submit</li></a> --%>
			 <%-- <a class="acount-btn" href="<c:url value="/Sthanks"/>"><li>Submit</li></a> --%>
			  <a class="acount-btn" href="Sthanks">Submit</a>
			 </td>
				<!-- <td><input type="submit" value="Register">
				</td></br>
				<td><input type="reset" value="Reset">
				</td>
				 --><br>
			</tr>
			
		</table>

	</form:form>  

</body>
</html>