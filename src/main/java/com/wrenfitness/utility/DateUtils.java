package com.wrenfitness.utility;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class DateUtils {
	
	static final Logger logger = LoggerFactory.getLogger(DateUtils.class);

	public static Timestamp JSDateToJavaDate(String dateString) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat(
	            "yyyy-MM-dd HH:mm:ss");

	Date date = format.parse(dateString);
	
	logger.info(date.toString());
	
	return new Timestamp(date.getTime());
	}
	
	public static Timestamp convertTimeStampToViewableFormat(Timestamp timeStamp) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat(
	            "yyyy-MM-dd'T'HH:mm:ss");
		Date date = new Date();
		date.setTime(timeStamp.getTime());
		String formattedDate = format.format(date);
		
		return new Timestamp(format.parse(formattedDate).getTime());
	}
}
