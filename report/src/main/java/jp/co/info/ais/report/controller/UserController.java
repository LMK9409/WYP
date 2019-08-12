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
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	public static final String PAGE_HOME = "user/input";

	@Autowired
	HttpSession session;

	/**
	 * ユーザー情報管理：個人情報設定　
	 */
    @RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, Model model) {
		logger.info("ユーザー情報登録⇒個人情報設定");

		ModelAndView mv = new ModelAndView(UserController.PAGE_HOME);

		//画面遷移先設定
		return mv;
	}


}