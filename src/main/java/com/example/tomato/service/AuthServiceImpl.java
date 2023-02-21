package com.example.tomato.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.tomato.mapper.AuthMapper;
import com.example.tomato.vo.AuthInfoVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Transactional
public class AuthServiceImpl implements AuthService {
	
	@Autowired
	AuthMapper authMapper;
	
	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public boolean setAuthInfo(AuthInfoVO authInfoVO) {
		log.info("setAuthInfo() ..");
		try {
			authMapper.insertAuthInfo(authInfoVO);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	@Override
    public boolean sendMail(String email, String title, String content) {
    	log.info("sendMail() ..");
    	try {
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "utf-8");
            helper.setTo(email);    //수신자 email 주소
            helper.setSubject(title);    //발신 제목
            helper.setText(content);
            javaMailSender.send(mimeMessage);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }
    }

}
