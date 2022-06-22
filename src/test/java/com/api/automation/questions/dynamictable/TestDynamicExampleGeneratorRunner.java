package com.api.automation.questions.dynamictable;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestDynamicExampleGeneratorRunner {
	@Test
	public Karate runTest() {
		return Karate.run("DynamicExampleGenerator").relativeTo(getClass());
	}
}
