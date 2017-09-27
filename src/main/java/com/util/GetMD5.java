package com.util;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

/**
 * @author pengfei.xiong
 * @date 2017-3-3上午10:06:09
 * @version 1.0
 */
public class GetMD5{

	/**
	 * 利用MD5加密
	 * @return String  加密后的字符串
	 * @param str  待加密的字符串
	 * @throws NoSuchAlgorithmException   异常
	 * @throws UnsupportedEncodingException  异常
	 */
	@SuppressWarnings("finally")
	public String Md5(String str) {
		String newstr = "";
		//1.确定计算方式
		MessageDigest md5;
		try {
			md5 = MessageDigest.getInstance("MD5");
			BASE64Encoder base64Encoder=new BASE64Encoder();
			//2。加密后的字符串
			newstr = base64Encoder.encode(md5.digest(str.getBytes("utf-8")));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}finally{
			return newstr;
		}
	}
	/*public static void main(String[] args)  {
		GetMD5 getMD5=new GetMD5();
		String string=getMD5.Md5("545454");
		System.out.println(string);
		String str=getMD5.Md5("545454");
		if (string.equals(str)) {
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
	}*/
}
