<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample Web App</title>
</head>
<body>

<h1>Simple Calculator WebApp</h1>

<form action="CalcServlet" method=post>
	Enter First Number <BR>
	<input type=text name=txtNumber1><BR><BR>

	Enter Second Number <BR>
	<input type=text name=txtNumber2><BR><BR>
	
	Select Operator<BR>
	<input type=Radio name=operator value=add Checked>Add <BR>
	<input type=Radio name=operator value=sub>Subtract <BR>
	<input type=Radio name=operator value=mul>Multiply <BR><BR>
	
	<input type=Submit value="Submit">
			
</form>
</body>
</html>
