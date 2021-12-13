package com.newlecture.web.controller.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.newlecture.web.entity.Notice;
import com.newlecture.web.service.NoticeService;
import com.newlecture.web.service.jdbc.JDBCNoticeService;

public class ListController implements Controller{

//	디펜던시 인젝션 IoC(bean바구니)에 등록하여 사용
//	어노테이션으로 객체 DI
	@Autowired
	private NoticeService noticeService;
	
//	public void setNoticeService(NoticeService noticeService) {
//		this.noticeService = noticeService;
//	}
//	어노테이션으로 객체 DI
//	디펜던시 인젝션 IoC(bean바구니)에 등록하여 사용
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ModelAndView mv = new ModelAndView("notice.list");
//		mv.setViewName("/WEB-INF/view/index.jsp");
//		디펜던시 인젝션 IoC(bean바구니)에 등록하여 사용
		List<Notice> list = noticeService.getList(1,"title","");
		mv.addObject("list",list);
//		디펜던시 인젝션 IoC(bean바구니)에 등록하여 사용
		
		return mv;
	}

}
