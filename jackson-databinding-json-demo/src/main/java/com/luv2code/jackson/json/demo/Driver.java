package com.luv2code.jackson.json.demo;

import java.io.File;

import com.fasterxml.jackson.databind.ObjectMapper;

public class Driver {

	public static void main(String[] args) {
		
		try {
			
			// create object mapper
			ObjectMapper mapper = new ObjectMapper();
			
			// read json file and map to java pojo
			
			Student theStudent = mapper.readValue(new File("data/sample-full.json"), Student.class);
			
			System.out.println("First name = " + theStudent.getFirstName());
			System.out.println("Last name = " + theStudent.getLastName());
			System.out.println("Is Active = " + theStudent.isActive());
			System.out.println("Id = " + theStudent.getId());
			
			Address tempAddress = theStudent.getAddress();
			
			System.out.println("Street = " + tempAddress.getStreet());
			System.out.println("City = " + tempAddress.getCity() + "\n");
			
			for (String tempLang : theStudent.getLanguages()) {
				System.out.print(tempLang + " ");
			}
			
			
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}

	}

}
