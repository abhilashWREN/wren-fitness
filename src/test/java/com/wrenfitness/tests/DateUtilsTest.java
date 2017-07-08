package com.wrenfitness.tests;

import java.text.ParseException;

import org.junit.Test;

import com.wrenfitness.utility.DateUtils;

public class DateUtilsTest {

	@Test
	public void checkDate() throws Exception {
		System.out.println(DateUtils.JSDateToJavaDate("2013-02-04 10:35:24"));
		
		
	}
	
}
