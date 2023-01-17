package com.example.tomato.controller;

import com.example.tomato.service.AddressService;
import com.example.tomato.vo.AddressVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/member")
public class AddressRestController {

    @Autowired
    private AddressService addressService;

    @PostMapping("/sido_name_list")
    public List<AddressVO> sidoNameList() {

        log.info("sidoNameList() ..");

        return addressService.sidoNameList();
    }

    // 주소 중 시/도 리스트를 받아서 화면단에 있는 시/군/구 셀렉트에 정보를 넣어준다.
    @PostMapping("/sigungu_name_list")
    public List<AddressVO> sigunguNameList(@RequestBody String sido_name) {

        log.info("sigunguName_list() ..");

        if(sido_name.equals("세종특별자치시")) {
            return addressService.sejong(sido_name);
        }

        return addressService.sigunguNameList(sido_name);
    }

    // 주소 중 시/도, 시/군/구 리스트를 받아서 화면단에 있는 동 셀렉트에 정보를 넣어준다.
    @PostMapping("/dong_name_list")
    public List<AddressVO> dongNameList(@RequestParam String sidoName, @RequestParam String sigunguName) {

        log.info("dongName_list() ..");

        log.info(sidoName + "," + sigunguName);

        return addressService.dongNameList(sidoName, sigunguName);
    }
}
