package com.spring.app.indexController;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.app.domain.ImageVO;
import com.spring.app.myshop.service.ProductService;


@Component
@Controller
@RequestMapping(value="/MyMVC/*")
public class indexController {
	
	@Autowired  // Type에 따라 알아서 Bean 을 주입해준다.
	private ProductService pservice;
	
	@GetMapping("index")   // http://localhost:9090/board/test/test_insert.action
	public ModelAndView index(HttpServletRequest request,ModelAndView mav) {
		
		
		//인덱스 이미지 가져오기
		List<ImageVO> imgList = pservice.imageSelectAll();
		
        
		mav.addObject("imgList", imgList);
		mav.setViewName("maintiles.index");
		return mav;
		//  /WEB-INF/views/test/test_insert.jsp 페이지를 만들어야 한다.
	}
	
}
