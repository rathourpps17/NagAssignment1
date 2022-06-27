package com.nagarro.training.libraryui.entities;

public class Books {
	int bookId;

	String bookName;

	String author;

	String date;

	public Books() {
		super();
	}

	public Books(int bookId, String bookName, String author, String date) {
		super();
		this.bookId = bookId;
		this.bookName = bookName;
		this.author = author;
		this.date = date;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Books [bookId=" + bookId + ", bookName=" + bookName + ", author=" + author + ", date=" + date + "]";
	}

}
