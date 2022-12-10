package com.api.automation.questions.csvsubsitute;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesCSVSubsitutionRunner {
	@Test
	public Karate runTest() {
		return Karate.run("ReadFromCSV.feature").relativeTo(getClass());
	}
}
