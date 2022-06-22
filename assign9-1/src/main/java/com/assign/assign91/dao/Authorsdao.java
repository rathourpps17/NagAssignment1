package com.assign.assign91.dao;

import java.util.List;

import org.springframework.web.client.RestTemplate;

import com.assign.assign91.model.Authors;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;



public class Authorsdao {

	static RestTemplate restTemplate = new RestTemplate();

	public static List<Authors> getallAuthors() {

		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = restTemplate.getForObject("http://localhost:9192/author", JsonNode.class);
		List<Authors> authors = mapper.convertValue(node, new TypeReference<List<Authors>>() {
		});
		return authors;
	}
}
