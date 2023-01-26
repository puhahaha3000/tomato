package com.example.tomato.controller;

import com.example.tomato.service.TradeService;
import com.example.tomato.vo.TradeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@RestController
@RequestMapping("/trade")
public class TradeRestController {

    private final TradeService tradeService;

    public TradeRestController(TradeService tradeService) {

        this.tradeService = tradeService;
    }

    @PostMapping("/write")
    public ResponseEntity<String> writeTrade(@RequestPart("tradeVO") TradeVO tradeVO,
                                             @RequestPart("file") @Nullable MultipartFile file) throws Exception {

        log.info("tradeWrite() ..");

        ResponseEntity<String> entity = null;

        log.info(tradeVO.toString());
        log.info(file.getOriginalFilename());


        try {
            boolean result = tradeService.writeTrade(tradeVO, file);

            if(result == true) {
                entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
            }
            else {
                Exception e = new Exception();
                e.printStackTrace();

                entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
            }

        }
        catch (Exception e) {
            e.printStackTrace();
            entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
        }

        return entity;
    }

    /*@PostMapping("image_write")
    public ResponseEntity<String> writeImage(@RequestParam("file") MultipartFile image) throws IOException {

        log.info("writeImage() ..");

        ResponseEntity<String> entity = null;

        log.info(image.toString());

        return entity;
    }*/
}
