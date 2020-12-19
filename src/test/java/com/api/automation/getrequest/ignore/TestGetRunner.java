package com.api.automation.getrequest.ignore;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("getRequest","responseMatcher").tags("~@ignore")
				.relativeTo(getClass());
	}
	
}
