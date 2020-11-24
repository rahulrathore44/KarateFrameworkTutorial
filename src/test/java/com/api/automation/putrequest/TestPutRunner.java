package com.api.automation.putrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestPutRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("updateJobEntry").relativeTo(getClass());
	}
	
	
}
