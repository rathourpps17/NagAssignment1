package com.nagarro.training.libraryui.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.nagarro.training.libraryui.entities.Books;

public class BooksDao {

	static RestTemplate restTemplate = new RestTemplate();

	public static List<Books> getallBooks() {

		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = restTemplate.getForObject("http://localhost:9090/books", JsonNode.class);
		List<Books> books = mapper.convertValue(node, new TypeReference<List<Books>>() {
		});
		return books;
	}
	public static void addbook(Books book) {
	restTemplate.postForEntity("http://localhost:9090/books", book, Books.class);
	
	}
	
	public static Books getBookById(int id) {
		Map<String, Integer> param=new HashMap<String, Integer>();
		param.put("bookId", id);
		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = restTemplate.getForObject("http://localhost:9090/books/{bookId}", JsonNode.class,param);
		Books books= mapper.convertValue(node, new TypeReference<Books>() {
		});
		return books;
	}
	public static void delete(int id) {
		Map<String, Integer> param=new HashMap<String, Integer>();
		param.put("bookId", id);
		restTemplate.delete("http://localhost:9090/books/{bookId}",param);
	}
}
