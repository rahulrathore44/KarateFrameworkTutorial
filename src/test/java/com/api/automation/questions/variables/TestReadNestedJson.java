package com.api.automation.questions.variables;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestReadNestedJson {
	@Test
	public Karate runTest() {
		return Karate.run("readNestedJson.feature").relativeTo(getClass());
	}
}
