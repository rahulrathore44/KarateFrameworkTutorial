package com.api.automation.questions.tables;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestCallTableRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("call-table").relativeTo(getClass());
	}
	
}
