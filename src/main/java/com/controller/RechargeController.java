package com.controller;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.RechargeDao;
import com.model.Recharge;


@Controller
public class RechargeController {
	
	private static final Logger logger = LoggerFactory.getLogger(RechargeController.class);
	@Autowired
	RechargeDao rdao;
	@RequestMapping("/recharge")
	public ModelAndView save(@ModelAttribute Recharge r) {
		
		
	
		int amount = rdao.findAmount(r.getPhoneNo());
		int i =  rdao.updateRecharge(r,amount);
		rdao.saveRecharge(r);
		if(i>0) {
			logger.info("test 1..");
			return new ModelAndView("successful");
		}
		else {
			logger.info("some error occured while putting data into database");
			return new ModelAndView("unsuccessful");
		}
		
		
	}
	@RequestMapping(value = "/confrim", method = RequestMethod.GET)
		public ModelAndView confirm(@ModelAttribute Recharge r) {
		
		logger.info("output of " + r);
		ModelAndView mv = new ModelAndView("confirm");
		mv.addObject("msg",r);
		return mv;
	
	}
}
