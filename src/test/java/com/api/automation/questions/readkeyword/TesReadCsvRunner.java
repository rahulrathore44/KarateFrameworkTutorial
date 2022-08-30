package com.api.automation.questions.readkeyword;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesReadCsvRunner {
	@Test
	public Karate runTest() {
		return Karate.run("ReadCsv.feature").relativeTo(getClass());
	}
}
