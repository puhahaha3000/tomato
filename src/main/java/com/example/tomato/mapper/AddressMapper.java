package com.example.tomato.mapper;

import com.example.tomato.vo.AddressVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AddressMapper {

    List<AddressVO> getSidoNameList();   // 시/도 데이터를 스트링 기반 리스트에 가져오기
    List<AddressVO> getSigunguNameList(String sidoName);   // 유저가 선택한 시/도 데이터를 가져와서 해당 시/도에 있는 시/군/구 데이터 리스트로 가져오기
    List<AddressVO> getDongNameList(String sidoName, String sigunguName);   // 유저가 선택한 시/도 및 시/군/구 데이터를 가져와서 해당 동 데이터를 리스트로 가져오기
    AddressVO getAddressVO(String memberId);   // 마이페이지 사용할 주소 정보 가져오기
}
