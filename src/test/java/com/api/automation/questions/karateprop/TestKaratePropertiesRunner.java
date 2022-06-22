package com.api.automation.questions.karateprop;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestKaratePropertiesRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("TestKarateProperties").relativeTo(getClass());
	}

}
