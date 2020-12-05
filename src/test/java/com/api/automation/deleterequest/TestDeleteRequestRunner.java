package com.api.automation.deleterequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestDeleteRequestRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("deleteJobEntry").relativeTo(getClass());
	}
	
	
}
