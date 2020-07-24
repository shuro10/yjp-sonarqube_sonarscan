package org.bulldogs.calcWebApp;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		out.println("<h1>Simple Calculator WebApp</h1>");
		
		String txtNumber1 = request.getParameter("txtNumber1");
		String txtNumber2 = request.getParameter("txtNumber2");
		String operator = request.getParameter("operator");
		
		int n1 = Integer.parseInt(txtNumber1);
		int n2 = Integer.parseInt(txtNumber2);
		int result=0;
		
		Calculator c = new Calculator();
				
		if (operator.equalsIgnoreCase("add"))
		result = c.add(n1, n2);
		
		else if (operator.equalsIgnoreCase("sub"))
		result = c.sub(n1, n2);

		else if (operator.equalsIgnoreCase("mul"))
		result = c.mul(n1, n2);
		
		out.println("<h2>Result: " + result + "</h2>");
	}
}
