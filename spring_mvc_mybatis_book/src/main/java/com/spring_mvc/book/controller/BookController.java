package com.spring_mvc.book.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_mvc.book.model.BookVO;
import com.spring_mvc.book.service.BookService;



@Controller
public class BookController {

	@Autowired
	BookService bookservice;
	
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	
	
	@RequestMapping("/books/bookAllList")
	public String viewBookAllList(Model model) {
		ArrayList<BookVO> bookList = bookservice.listAllBook();
		model.addAttribute("bookList",bookList);
		return "books/bookAllListView";
	}
	
	@RequestMapping("/books/bookNewForm")
	public String viewBookNewForm() {
		return "books/bookNewForm";
	}
	
	@RequestMapping("/books/insertBook")
	public String insertBook(BookVO book) {
		bookservice.insertBook(book);
		return "redirect:./bookAllList";
	}
	
	
	//도서 상세 정보 조회 : 1개 상품 조회
	@RequestMapping("/books/bookDetailView/{bookNo}")
	public String detailViewbook(@PathVariable String bookNo, Model model) {
		BookVO book = bookservice.detailViewBook(bookNo);
		model.addAttribute("book",book);
		return "books/bookDetailView";
	}
	
	@RequestMapping("/books/bookUpdateForm/{bookNo}")
	public String viewBookUpdateForm(@PathVariable String bookNo, Model model) {
		BookVO book = bookservice.detailViewBook(bookNo);
		model.addAttribute("book",book);
		return "books/bookUpdateForm";
	}
	
	@RequestMapping("/books/updateBook")
	public String updateBook(BookVO book) {
		bookservice.updateBook(book);
		return "redirect:./bookAllList";
	}
	

	@RequestMapping("/books/deleteBook/{bookNo}")
	public String deleteBook(@PathVariable String bookNo) {
		bookservice.deleteBook(bookNo);
		
		// 삭제한 후 후 전체 상품 조회 화면으로 포워딩
		return "redirect:/books/bookAllList";
	}

	//도서번호 중복 확인
	@ResponseBody
	@RequestMapping("/books/bookNoCheck")
	public String bookNoCheck(@RequestParam("bookNo") String bookNo) {
		String bookNo_result=bookservice.bookNoCheck(bookNo);
		
		String result="use";
		if(bookNo_result!=null)
			result="no_use";
		
		return result;
	}

	// 상품 검색 폼 열기 요청 처리
	@RequestMapping("/books/bookSearchForm")
	public String viewbookSearchForm() {
		return "books/bookSearchForm";
	}

	
	// 상품 검색 : 방법2
	// @ResponseBody 사용하지 않고 뷰 페이지 전달
	// 검색 내용은 동일하고 반환값만 다름
	@RequestMapping("/books/bookSearch")
	public String booksSearch(@RequestParam HashMap<String, Object> param,
																				Model model){
	ArrayList<BookVO> bookList = bookservice.bookSearch(param);
	//모델 설정
	model.addAttribute("bookList", bookList);
	return "books/bookSearchResult"; // 뷰 페이지 반납
}	
}
