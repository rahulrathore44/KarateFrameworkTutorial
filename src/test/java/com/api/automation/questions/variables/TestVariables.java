package com.api.automation.questions.variables;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestVariables {
	@Test
	public Karate runTest() {
		return Karate.run("variables.feature").relativeTo(getClass());
	}
}
