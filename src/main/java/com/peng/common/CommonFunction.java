package com.peng.common;
/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年10月29日 上午11:43:42 
*/

import java.io.File;

/**
 * 用作公共的方法调用类
 * @author Peng
 *
 */
public class CommonFunction {
	public String getDateTime() {
		return null;
		
		
	}
	
	public  String JudgeDir(String filepath) {
		 File file =new File(filepath); 
         if  (!file.exists() && !file.isDirectory()){
        	 file.mkdir(); 
        	 return "1";
         }else {
        	 return "0";
         }
	}
}

