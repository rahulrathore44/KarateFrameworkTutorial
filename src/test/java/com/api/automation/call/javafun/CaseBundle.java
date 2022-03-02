package com.api.automation.call.javafun;

import java.util.LinkedHashMap;
import java.util.Map;

public class CaseBundle {

	public Map<String, String> getMap() {
		LinkedHashMap<String, String> testMap= new LinkedHashMap<String, String>();
		testMap.put("one", "Two");
		testMap.put("3", "4");
		
		return testMap;
	}
	
	public static Map<String, String> getStaticMap() {
		LinkedHashMap<String, String> testMap= new LinkedHashMap<String, String>();
		testMap.put("static-one", "Two");
		testMap.put("static-3", "4");
		
		return testMap;
	}
}
