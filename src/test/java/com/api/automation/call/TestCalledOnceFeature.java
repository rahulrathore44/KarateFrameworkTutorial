package com.api.automation.call;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestCalledOnceFeature {
	
	@Test
	public Karate runTest() {
		return Karate.run("Caller").relativeTo(getClass());
	}
	
	
}
