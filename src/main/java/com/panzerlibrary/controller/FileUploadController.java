package com.panzerlibrary.controller;

import com.panzerlibrary.model.FileBucket;
import com.panzerlibrary.model.ResponseMessage;
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
    public ResponseMessage singleFileUpload(@Valid FileBucket fileBucket, BindingResult result) {

        if (result.hasErrors()) {
            log.log(Level.SEVERE, "File validation errors");
            return new ResponseMessage("validation errors");
        } else {
            try {
                MultipartFile multipartFile = fileBucket.getFile();

                //Now do something with file...
                File uploadFile = new File(UPLOAD_LOCATION + fileBucket.getFile().getOriginalFilename());
                File renamedFile = new File(UPLOAD_LOCATION + Helper.properFilenameMaker(uploadFile.getName()));
                FileCopyUtils.copy(fileBucket.getFile().getBytes(), uploadFile);
                FileUtils.moveFile(uploadFile, renamedFile);
                String fileName = multipartFile.getOriginalFilename();

                return new ResponseMessage("Successful upload of " + fileName);

            } catch (IOException e) {
                log.log(Level.SEVERE, e.getMessage());
                return new ResponseMessage("Upload unsuccessful");
            }
        }
    }
}
