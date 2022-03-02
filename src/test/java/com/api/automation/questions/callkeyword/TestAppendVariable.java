package com.api.automation.questions.callkeyword;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestAppendVariable {
	@Test
	public Karate runTest() {
		return Karate.run("TestCallTestFunc").relativeTo(getClass());
	}

}
