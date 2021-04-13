package com.api.automation.questions.deepsearch;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestDeepSearchRunner {

	@Test
	public Karate runTest() {
		return Karate.run("deepSearch").relativeTo(getClass());
	}

}
