package com.example.tomato.service;

import com.example.tomato.mapper.AddressMapper;
import com.example.tomato.vo.AddressVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;

    @Override
    public List<AddressVO> sidoNameList() {

        log.info("get sidoNameList() ..");

        List<AddressVO> sidoNames = addressMapper.getSidoNameList();

        return sidoNames;
    }

    @Override
    public List<AddressVO> sigunguNameList(String sidoName) {

        log.info("get sigunguNameList() ..");

        List<AddressVO> sigungusNames = addressMapper.getSigunguNameList(sidoName);

        return sigungusNames;
    }

    @Override
    public List<AddressVO> dongNameList(String sidoName, String sigunguName) {

        log.info("get dongNameList() ..");

        List<AddressVO> dongNames = addressMapper.getDongNameList(sidoName, sigunguName);

        return dongNames;
    }

    @Override
    public AddressVO myAddress(String memberId) {

        log.info("myaddress(memberId) ..");

        AddressVO addressVO = addressMapper.getAddressVO(memberId);

        log.info("address : " + addressVO.getSidoName() + " "
                + addressVO.getSigunguName() + " " + addressVO.getDongName());

        return addressVO;
    }

    @Override
    public List<AddressVO> sejong(String sidoName) {

        log.info("get sejong() ..");

        List<AddressVO> dongNames = addressMapper.getSejong(sidoName);

        return dongNames;
    }
}
