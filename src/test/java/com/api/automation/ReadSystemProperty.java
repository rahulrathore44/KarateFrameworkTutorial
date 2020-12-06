package com.api.automation;

public class ReadSystemProperty {
	public static void main(String[] args) {
		System.out.println("Location " + System.getProperty("location", "com/api/automation"));
		System.out.println("Tags " + System.getProperty("tags", "@Confidence"));
	}

}
