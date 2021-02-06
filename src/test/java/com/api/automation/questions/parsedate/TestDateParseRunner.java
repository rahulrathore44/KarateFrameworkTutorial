package com.api.automation.questions.parsedate;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestDateParseRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("ParseDateTime").relativeTo(getClass());
	}
	
}
