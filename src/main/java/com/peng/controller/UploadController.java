package com.peng.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
















import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;




/** 
 * @author Peng
 * @Email 924701358@qq.com
 * @date 2017年4月30日 下午10:31:54 
 * @version 1.0 
 * @return  
 */
@Controller
public class UploadController {
	
	Logger logger = Logger.getLogger(UploadController.class);
	
	
	@RequestMapping("/upload")
	public ModelAndView mainPage(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView view = new ModelAndView("upload");
		return view;
	}
	
	@RequestMapping(value = "/uploadFile", method = { RequestMethod.POST }, produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String uploadFile(HttpServletResponse response, HttpServletRequest request,
            @RequestParam("file") MultipartFile file) {
		String name = file.getName();
		File newfile = new File("/opt/");

        if (!newfile.exists()) {
            newfile.mkdirs();
        }
        StringBuffer filePath= new StringBuffer(newfile+name);

        try {
			file.transferTo(new File(filePath.toString()));
		}catch (Exception e) {
			e.printStackTrace();
		}
		return  "ok";
    }
	
	/*public String saveUospFile() throws Exception {
    	String type = this.getParameter("type");
		String formID = this.getParameter("formID");
		String creatorid = this.getParameter("creatorid");
		String creatorname = this.getParameter("creatorname");
		String fileSuffix = uospFileFileName.substring(uospFileFileName.lastIndexOf(".") + 1, uospFileFileName.length());
		String guid = java.util.UUID.randomUUID().toString().replace("-", "");
		String prefour = formID;
		if(formID.length()>0 && formID.length()<32){
			prefour = formID.substring(0, 4);
		}else{
			prefour = "UUID";
		}
		Calendar cal = Calendar.getInstance();
		String year = Integer.toString(cal.get(Calendar.YEAR));//获取年份
		String month = Integer.toString(cal.get(Calendar.MONTH) + 1);//获取月份
		String day = Integer.toString(cal.get(Calendar.DATE));//获取日
    	String fileInfo=uploadDirPath  + prefour + "/" + year + "/"  + month + "/" + day + "/" + formID + "/"  + this.getUospFileFileName();//this.getUospFileFileName()//保存在uosp的附件路径信息
    	String dirPath = uploadDirPath  + prefour + "/" + year + "/"  + month + "/" + day + "/" + formID + "/"  + guid +"." + fileSuffix;//保存在uosp的附件路径信息
    	FileUtil.createDir(uploadDirPath);
    	
    	File dstFile = new File(dirPath); 
    	InputStream in = null;
		OutputStream out = null;
        

		int fileSize = (int) uospFile.length(); //源文件
		try {
			if (!dstFile.getParentFile().exists()){
				if(!dstFile.getParentFile().mkdirs()){
					logger.error("创建目录失败");
				}
			}
			in = new BufferedInputStream(new FileInputStream(uospFile), fileSize);
			out = new BufferedOutputStream(new FileOutputStream(dstFile), fileSize);
			byte[] buffer = new byte[fileSize];
			int len = 0;
			while ((len = in.read(buffer)) > 0) {
				out.write(buffer, 0, len);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
		} finally {
			if (null != in) {
				try {
					in.close();
				} catch (IOException e) {
				    logger.error(e.getMessage(),e);
				}
			}
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
				    logger.error(e.getMessage(),e);
				}
			}
		}
		
		
		TblAbAttachment entity = new TblAbAttachment();
		entity.setFormid(formID);
		entity.setAttachmentid(guid);
		entity.setFilepath(dirPath);
		entity.setFileInfo(fileInfo);
		entity.setIsTrans("1");
		entity.setAttachmentname(uospFileFileName);
		entity.setFilesize(Double.parseDouble(Long.toString(uospFile.length())) / 1024);
		entity.setFilesuffix(fileSuffix);
		entity.setIsencrypt("0");
		entity.setCreatedate(new java.util.Date());
		entity.setIsdelete(0);
		entity.setType(Integer.parseInt(type));
//		entity.setAttachmenttype(attachmenttype);
		entity.setCreatorid(creatorid);
		entity.setCreatorname(creatorname);
		tblAbAttachmentService.doSave(entity);//保存附件信息到新uosp
		this.put("obj", guid);
		return SUCCESS;
    }*/
	
	
}

