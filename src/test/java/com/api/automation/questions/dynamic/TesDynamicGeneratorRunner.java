package com.api.automation.questions.dynamic;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesDynamicGeneratorRunner {
	@Test
	public Karate runTest() {
		return Karate.run("DynamicGenerator.feature").relativeTo(getClass());
	}
}
