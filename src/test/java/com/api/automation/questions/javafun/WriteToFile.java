package com.api.automation.questions.javafun;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class WriteToFile {

	public void saveJson(String value) {
		try {
			BufferedWriter writer = new BufferedWriter(new FileWriter(new File("Response.json")));
			writer.write(value);
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
