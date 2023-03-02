package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
		
		System.out.println(product);
		productDao.createProduct(product);
		
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/");
		return view;
	}
	
	@RequestMapping("/delete-product/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId ,HttpServletRequest request) {
		
		this.productDao.deleteProduct(productId);
		
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/");
		return view;
	}
	
	@RequestMapping("update-product/{productId}")
	public String updateProduct(@PathVariable("productId") int pid, Model m) {
		Product product = this.productDao.getSingleProduct(pid);
		m.addAttribute("product",product);
		return "update-form";
	}
}
