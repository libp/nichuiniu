package com.peng.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.peng.common.CommonFunction;

/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年10月28日 上午7:56:04 
*/

@Controller
@RequestMapping(value = "/editArticle")
public class CommonController {
	
	@Value("${upload.path:/opt/}")
	private String uploadPath;
	
	Logger logger = Logger.getLogger(CheckArticleController.class);
	
	@RequestMapping(value="/uploadFile",method=RequestMethod.POST)
	@ResponseBody
	public String fileUpload(HttpServletResponse response, HttpServletRequest request,
			@RequestParam("file") CommonsMultipartFile  file) {
//		String pathRoot = request.getSession().getServletContext().getRealPath("");  
        String path="";
        Map<String, String> map = new HashMap<String, String>();
        if(!file.isEmpty()){  
            String uuid = UUID.randomUUID().toString().replaceAll("-","");  
            String contentType=file.getContentType();  
            String imageNameSuffix=contentType.substring(contentType.indexOf("/")+1);
            File fileDir =new File(uploadPath); 
            if  (!fileDir.exists() && !fileDir.isDirectory()){
            	fileDir.mkdir(); 
            	logger.info("create fileDir succcess path is "+uploadPath);
            }
            String picName = uuid+"."+imageNameSuffix;
            path=uploadPath+picName;  
            try {
				file.transferTo(new File(path));
				logger.info("images has upload success picName is :"+picName);
				map.put("result","success");
				map.put("picName",picName);
				return JSONArray.toJSONString(map);
			}  catch (Exception e) {
				logger.error(e);
			}  
        }
        map.put("result","failure");
        return JSONArray.toJSONString(map);
	}

}

