package org.bulldogs.calcWebApp;

import static org.junit.Assert.*;
import org.junit.Test;

public class CalculatorTest {

	@Test
	public void addMethodTest1() 
	{
		Calculator c = new Calculator();
		int result = c.add(10, 20);
		assertEquals(30, result);
	}

	@Test
	public void addMethodTest2() 
	{
		Calculator c = new Calculator();
		int result = c.add(-5, -20);
		assertEquals(-25, result);
	}	
	
	@Test
	public void addMethodTest3() 
	{
		Calculator c = new Calculator();
		int result = c.add(-5, 20);
		assertEquals(15, result);
	}		

	@Test
	public void subMethodTest1() 
	{
		Calculator c = new Calculator();
		int result = c.sub(20, 5);
		assertEquals(15, result);
	}

	@Test
	public void subMethodTest2() 
	{
		Calculator c = new Calculator();
		int result = c.sub(-20, 5);
		assertEquals(-25, result);
	}	
	
	@Test
	public void subMethodTest3() 
	{
		Calculator c = new Calculator();
		int result = c.sub(0, 0);
		assertEquals(0, result);
	}		
	

	@Test
	public void mulMethodTest1() 
	{
		Calculator c = new Calculator();
		int result = c.mul(5, 10);
		assertEquals(50, result);
	}		
	
	@Test
	public void mulMethodTest2() 
	{
		Calculator c = new Calculator();
		int result = c.mul(5, 0);
		assertEquals(0, result);
	}	
	
	
	@Test
	public void factorialMethodTest1() 
	{
		Calculator c = new Calculator();
		int result = c.factorial(3);
		assertEquals(6, result);
	}

	@Test
	public void factorialMethodTest2() 
	{
		Calculator c = new Calculator();
		int result = c.factorial(1);
		assertEquals(1, result);
	}	

	@Test
	public void factorialMethodTest3() 
	{
		Calculator c = new Calculator();
		int result = c.factorial(5);
		assertEquals(120, result);
	}
	
	@Test
	public void isEvenTest1()
	{
		Calculator c = new Calculator();
		boolean b = c.isEven(5);
		assertEquals(b, false);
		
	}


	@Test
	public void isEvenTest2()
	{
		Calculator c = new Calculator();
		boolean b = c.isEven(4);
		assertEquals(b, true);
		
	}

	@Test
	public void isEvenTest3()
	{
		Calculator c = new Calculator();
		boolean b = c.isEven(-5);
		assertEquals(b, false);
		
	}

}
