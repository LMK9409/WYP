package jp.co.info.ais.report.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ActionController {

	private static final Logger logger = LoggerFactory.getLogger(ActionController.class);
	public static final String PAGE_HOME = "index";
	public static final String PAGE_MAIN = "main";
	public static final String PAGE_REG = "input";

	@Autowired
	HttpSession session;

	/**
	 * ログイン画面へ
	 */
    @RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, Model model) {
		logger.info("login view : start");
		ModelAndView mv = new ModelAndView(ActionController.PAGE_HOME);

		
		
		
		//画面遷移先設定
		return mv;
	}

	/**
	 * 新規ユーザー登録画面へ
	 */
    @RequestMapping(value = "/input", method = RequestMethod.GET)
	public ModelAndView register(HttpServletRequest request, Model model) {
		logger.info("main view : start");
		ModelAndView mv = new ModelAndView(ActionController.PAGE_REG);

		//画面遷移先設定
		return mv;
	}
    
    @RequestMapping(value = "/test", method = RequestMethod.GET)
   	public ModelAndView test(HttpServletRequest request, Model model) {
   		logger.info("test view : start");
   		ModelAndView mv = new ModelAndView("test");

   		//画面遷移先設定
   		return mv;
   	}


	/**
	 * メイン画面へ
	 */
    @RequestMapping(value = "/main", method = RequestMethod.POST)
	public ModelAndView main(HttpServletRequest request, Model model) {
		logger.info("main view : start");
		ModelAndView mv = new ModelAndView(ActionController.PAGE_MAIN);

		//画面遷移先設定
		return mv;
	}


}