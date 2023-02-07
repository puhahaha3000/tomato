package com.example.tomato.controller;

import com.example.tomato.service.TradeService;
import com.example.tomato.vo.ItemCategoryVO;
import com.example.tomato.vo.TradeStatusVO;
import com.example.tomato.vo.TradeVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/trade")
public class TradeRestController {

    private final TradeService tradeService;

    public TradeRestController(TradeService tradeService) {

        this.tradeService = tradeService;
    }

    @GetMapping("/item_category_list")
    public List<ItemCategoryVO> itemCategoryList() {

        log.info("itemCategoryList() ..");

        return tradeService.itemList();
    }

    @GetMapping("trade_status")
    public List<TradeStatusVO> tradeStatusList() {

        log.info("tradeStatusList() ..");

        return tradeService.statusList();
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

            if(result) {
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

    @PatchMapping("/modify")
    public ResponseEntity<String> modify(@RequestPart("tradeVO") TradeVO tradeVO,
                                         @RequestPart("file") @Nullable MultipartFile file) throws Exception {

        log.info("Trade : modify() ..");

        ResponseEntity<String> entity = null;

        // log.info(tradeVO.toString());
        // log.info(file.getOriginalFilename());

        try {
            boolean result = tradeService.modify(tradeVO);

            if(result) {
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




    @DeleteMapping("/remove")
    public ResponseEntity<String> remove(@RequestBody String boardNo) {

        log.info("Trade : remove() ..");

        ResponseEntity<String> entity = null;

        try {
            boolean result = tradeService.remove(Integer.parseInt(boardNo));
            log.info("test" + result );

            if(result) {
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

}
