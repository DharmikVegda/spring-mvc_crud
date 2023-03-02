package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.dao.ProductDao;
import com.model.Product;

@Controller
public class HomeCtrl {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String first(Model m) {
		
		List<Product> products = this.productDao.getAllProduct();
		m.addAttribute("product", products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String home() {
		return "add_product_form";
	}
	
	@RequestMapping(value="/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		
		productDao.createProduct(product);
		
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/");
		return view;
	}
}
