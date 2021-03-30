package com.jonayed.Model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncriptAlgo {
	
	public String encriptPass(String pass) {
		
		
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(pass.getBytes());
			byte[] res = md.digest();
			StringBuilder s = new StringBuilder();
			for(byte b: res) {
				s.append(String.format("%02x", b));
			}
			return s.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		return "";
	}

}
