package com.example.tomato.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.tomato.mapper.MemberMapper;
import com.example.tomato.vo.MemberDetailsVO;
import com.example.tomato.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CustomMemberDetailsService implements UserDetailsService {
   
   @Autowired
   private MemberMapper memberMapper;
      
   @Override
   public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
      
      log.warn("Load Member By MemberVO id: " + id);      
      MemberVO vo = memberMapper.getMember(id);
      
      log.warn("queried by MemberVO mapper: " + vo);      
      return vo == null ? null : new MemberDetailsVO(vo);
   }
   
   
}