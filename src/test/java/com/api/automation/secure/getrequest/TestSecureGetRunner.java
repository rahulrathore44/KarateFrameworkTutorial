package com.api.automation.secure.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestSecureGetRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("secureGetRequest","secureGetWithJWTToken").relativeTo(getClass());
	}
	
}
