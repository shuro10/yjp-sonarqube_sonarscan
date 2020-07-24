package org.bulldogs.calcWebApp;

public class Calculator 
{
	public int sub(int a, int b)
	{
		return a-b;
	}
	
	public int add(int a, int b)
	{
		return a+b;
	}
	
	public int mul(int a, int b)
	{
		return a*b;
	}	
	
	public int div(int a, int b)
	{
		return a/b;
	}
	
	public boolean isEven(int a)
	{
		if (a % 2 == 0)
			return true;
		
		else 
			return false;
	}
	
	public int factorial(int a)
	{		
		if (a == 1)
			return 1;
		
		else 
		return a * factorial (a-1);
	}
}
