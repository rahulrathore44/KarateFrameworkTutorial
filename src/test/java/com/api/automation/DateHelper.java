package com.api.automation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateHelper {
	
	public static void main(String[] args) throws ParseException {
		String textDate = "2021-02-07T04:45:11.577+0000";
		String pattren = "yyyy-MM-dd'T'HH:mm:ssZ";
		String newpattren = "yyyy-MM-dd HH:mm:ss";
		SimpleDateFormat dateFormat = new SimpleDateFormat(pattren);
		//Date aDate = dateFormat.parse(new Date());
		System.out.println(dateFormat.format(new Date()));
	}

}
