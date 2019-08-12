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
public class ReportController {

	private static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	public static final String PAGE_HOME = "report/input";
	public static final String PAGE_LIST = "report/list";

	@Autowired
	HttpSession session;

	/**
	 * 実績報告情報管理
	 */
    @RequestMapping(value = "/work/input", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, Model model) {
		logger.info("work report input start");

		ModelAndView mv = new ModelAndView(ReportController.PAGE_HOME);

		//画面遷移先設定
		return mv;
	}

	/**
	 * 実績報告情報管理
	 */
    @RequestMapping(value = "/work/list", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest request, Model model) {
		logger.info("work report list start");

		ModelAndView mv = new ModelAndView(ReportController.PAGE_LIST);

		//画面遷移先設定
		return mv;
	}

}