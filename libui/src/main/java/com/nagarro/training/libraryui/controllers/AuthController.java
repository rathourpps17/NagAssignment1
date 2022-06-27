package com.nagarro.training.libraryui.controllers;

import java.io.IOException;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nagarro.training.libraryui.entities.Users;


@Controller
public class AuthController {
	@RequestMapping("/login")
	public void login(@RequestParam("userEmail") String username, @RequestParam("userPassword") String password,
			HttpServletRequest request, HttpServletResponse response) throws IOException {
          System.out.println("jhjdsjdskhdh");
		RestTemplate restTemplate = new RestTemplate();
		ObjectMapper mapper = new ObjectMapper();
		HttpSession session=request.getSession();
		JsonNode node = restTemplate.getForObject("http://localhost:9090/users", JsonNode.class);
		List<Users> users=mapper.convertValue(node, new TypeReference<List<Users>>() {
		});
		boolean loggedin=false;
		for (Users user : users) {
			if (user.getName().equals(username) && user.getPassword().equals(password)) {
				session.setAttribute("username", user.getName());
				response.sendRedirect("admin.jsp");
				loggedin=true;
				break;
			}
			
		}
		
		if(!loggedin) response.sendRedirect("index.jsp");

	}
	
	@RequestMapping("/Logout")
	public void Logout(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		HttpSession session=req.getSession();
		session.removeAttribute("username");
		session.invalidate();
		res.sendRedirect("index.jsp");
	}

}
