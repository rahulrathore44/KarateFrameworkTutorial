package com.api.automation.mocks;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ProductCompositeServiceRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("ProductCompositServiceTest").relativeTo(getClass());
	}

}
