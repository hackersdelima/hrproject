package com.project.hrproject;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.hrproject.entity.ImageModel;
import com.project.hrproject.service.DocumentService;
import com.project.hrproject.utils.ImageConverter;


@RestController
@RequestMapping("/document")
public class DocumentUploadController {
	@Autowired
	DocumentService documentService;
	
	ImageConverter i = new ImageConverter();

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public Map<String, Object> uploadmedia(@RequestParam("file") MultipartFile[] file,
			@ModelAttribute ImageModel imageModel, HttpServletResponse response) {
		Map<String, Object> map = new HashMap<String, Object>();
//blob conversion
		if (file != null && file.length > 0) {
			for (int i = 0; i < file.length; i++) {
				try {
					InputStream is = file[i].getInputStream();
					byte[] targetArray = IOUtils.toByteArray(is);
					imageModel.setImage(targetArray);
					System.out.println(targetArray);

					int save_status = 0;
					// save_status = save query here
					save_status = documentService.saveDocument(imageModel, i);
					if (save_status > 0) {
						map.put("status", HttpStatus.OK);
					} else {
						map.put("status", HttpStatus.NOT_ACCEPTABLE);
					}

				} catch (Exception e) {
					System.out.println(e);
					map.put("status", HttpStatus.INTERNAL_SERVER_ERROR);
				}
			}
		}
		else {
			map.put("status", "no files found!");
		}
		return map;
	}
	
	@RequestMapping(value = "/findByUserid/{id}", method = RequestMethod.GET)
	public Map<String, Object> findByUserid(@PathVariable("id") String userid){
		Map<String, Object> map = new HashMap<String, Object>();
		List<ImageModel> list =  documentService.findByUserid(userid);
		System.out.println(list);
		map.put("data", list);
		return map;
	}

}
