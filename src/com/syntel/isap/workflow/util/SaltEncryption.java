package com.syntel.isap.workflow.util;

import java.io.UnsupportedEncodingException;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.KeySpec;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

import org.springframework.stereotype.Service;


@Service("saltEncryption")
public class SaltEncryption {
	     private static final int    KEY_LENGTH              = 128; 
	    private static final int    ITERATIONS              = 5; 

	    private static final String ALGORITHM               = "AES"; 
	    private static final String SECRET_KEY_ALGORITHM    = "PBKDF2WithHmacSHA1"; 
	    private static final String TRANSFORMATION          = "AES/CBC/PKCS5Padding";
	 
	    private  Cipher        m_enc_cipher; 
	    private  Cipher        m_dec_cipher; 
	    
	    SaltEncryption(){
	    	
	    }
	   
	    public SaltEncryption(final char[] password, final byte[] salt) 
	            throws Exception { 

	        // Derive the key, given password and salt 
	        final SecretKeyFactory factory = SecretKeyFactory.getInstance(SECRET_KEY_ALGORITHM);
	         final KeySpec spec = new PBEKeySpec(password, salt, ITERATIONS,KEY_LENGTH);
	         SecretKey tmp = factory.generateSecret(spec); 
	        SecretKey secret = new SecretKeySpec(tmp.getEncoded(), ALGORITHM); 

	        // Build encryptor and get IV 
	        final Cipher enc_cipher = Cipher.getInstance(TRANSFORMATION); 
	        enc_cipher.init(Cipher.ENCRYPT_MODE, secret); 

	        // Build decryptor 
	        final Cipher dec_cipher = Cipher.getInstance(TRANSFORMATION); 

	        final AlgorithmParameters params = enc_cipher.getParameters(); 
	        final byte[] iv = params.getParameterSpec(IvParameterSpec.class) 
	                .getIV(); 
	        dec_cipher.init(Cipher.DECRYPT_MODE, secret, new IvParameterSpec(iv)); 


	        this.m_enc_cipher = enc_cipher; 
	        this.m_dec_cipher = dec_cipher; 
	    } 

	    public byte[] encrypt(final byte[] data) throws NoSuchAlgorithmException, 
	            InvalidKeySpecException, NoSuchPaddingException, 
	            InvalidKeyException, InvalidParameterSpecException, 
	            IllegalBlockSizeException, BadPaddingException, 
	            UnsupportedEncodingException { 
	        return this.m_enc_cipher.doFinal(data); 
	    } 

	 


	    public  String Encrpt(String pass) throws Exception{ 
	        final char[] password = pass.toCharArray(); 
	        final byte[] salt = new byte[] {1,2,3,4,   5,6,7,8}; 

	        final byte[] original_data = pass.getBytes(); 
	        
	        
	        
	        final SaltEncryption aesA = new SaltEncryption(password, salt); 
	        
	        
	        
	        final byte[] encrypted_data = aesA.encrypt(original_data); 

	        System.out.println("Original: "+ pass); 
	        System.out.println(javax.xml.bind.DatatypeConverter 
	                .printHexBinary(original_data) ); 
	        System.out.println(); 

	        System.out.println("Encrypted:"); 
	        System.out.println(javax.xml.bind.DatatypeConverter 
	                .printHexBinary(encrypted_data)); 
	        String encry = javax.xml.bind.DatatypeConverter 
	                .printHexBinary(encrypted_data);
	        return encry;  
	    } 
	    
}
