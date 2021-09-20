package com.uitl.method;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;

public class SecureNumberGenerate {
	private SecureRandom secureRandomGenerator;
	public String uRandom( String name) {
		try {
			secureRandomGenerator = SecureRandom.getInstance("SHA1PRNG", "SUN");
		} catch (NoSuchAlgorithmException | NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Get random integer in range
		int randInRange = secureRandomGenerator.nextInt(100);
		return  name+randInRange;
	}

}
