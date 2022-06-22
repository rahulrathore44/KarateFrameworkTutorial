package com.api.automation.questions.dynamictable;

import java.util.Random;

public class RandomEmailGenerator {
	
	public String getRamdomEmail() {
		Random randomNumber = new Random(10000);
		return "bill.gates" + randomNumber.nextInt() + "@microsoft.com";
	}

}
