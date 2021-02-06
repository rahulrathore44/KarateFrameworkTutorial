package com.api.automation;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class testing {
	public static void main(String[] args) throws ParseException {
		String textDate = "2021-02-06T04:45:11.577+0000";
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date aDate = dateFormat.parse(textDate);
		System.out.println(dateFormat.format(aDate).toString());
	}

}
