package com.api.automation.questions.csvsubsitute.nullval;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestConvertEmptyToNullCSV {
	@Test
	public Karate runTest() {
		return Karate.run("ConvertEmptyToNullCSV.feature").relativeTo(getClass());
	}
}
