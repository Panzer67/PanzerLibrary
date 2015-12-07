package com.panzerlibrary.controller;

import com.panzerlibrary.model.FileBucket;
import com.panzerlibrary.model.ResponseObject;
import com.panzerlibrary.util.FileValidator;
import com.panzerlibrary.util.Helper;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.validation.Valid;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {

    private static final Logger log = Logger.getLogger(FileUploadController.class.getName());

    private static final String UPLOAD_LOCATION = "C:/temp/";

    @Autowired
    FileValidator fileValidator;

    @InitBinder("fileBucket")
    protected void initBinderFileBucket(WebDataBinder binder) {
        binder.setValidator(fileValidator);
    }

    @RequestMapping(value = "/singleUpload", method = RequestMethod.POST)
    @ResponseBody
    public ResponseObject singleFileUpload(@Valid FileBucket fileBucket, BindingResult result) {

        if (result.hasErrors()) {
            log.log(Level.SEVERE, "File validation errors");
            return new ResponseObject("validation errors");
        } else {
            try {
                
                String filename = fileBucket.getFile().getOriginalFilename();                
                File renamedFile = new File(UPLOAD_LOCATION + Helper.properFilenameMaker(filename));
                FileCopyUtils.copy(fileBucket.getFile().getBytes(), renamedFile);               
               
                return new ResponseObject("Successful upload of " + filename, renamedFile.getName());

            } catch (IOException e) {
                log.log(Level.SEVERE, e.getMessage());
                return new ResponseObject("Upload unsuccessful");
            }
        }
    }
}
