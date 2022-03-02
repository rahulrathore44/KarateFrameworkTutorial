package com.api.automation.call.javafun;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestCallJavaFuncRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("TestCallJavaFunction").relativeTo(getClass());
	}
	
	
}
