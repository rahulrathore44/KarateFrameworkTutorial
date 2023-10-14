package com.api.automation.questions.javafun;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class WriteJsonToFile {
	@Test
	public Karate runTest() {
		return Karate.run("WriteJsonToFile.feature").relativeTo(getClass());
	}
}
