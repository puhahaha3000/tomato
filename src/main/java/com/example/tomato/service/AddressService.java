package com.example.tomato.service;


import com.example.tomato.vo.AddressVO;

import java.util.List;

public interface AddressService {

    List<AddressVO> sidoNameList();   // 시/도 명 리스트 가져오는 서비스
    List<AddressVO> sigunguNameList(String sidoName);   // 해당 시/도 데이터에 포함되는 시/군/구 리스트를 가져오는 서비스
    List<AddressVO> dongNameList(String sidoName, String sigunguName);   // 해당 시/도 및 시/군/구 데이터에 포함되는 동 리스트를 가져오는 서비스
    AddressVO myAddress(String memberId);   // 마이페이지에 유저 정보에 띄울 주소 가져오는 서비스
}
