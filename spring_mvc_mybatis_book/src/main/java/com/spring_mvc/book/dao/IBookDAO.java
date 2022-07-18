package com.spring_mvc.book.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_mvc.book.model.BookVO;

public interface IBookDAO {
	public ArrayList<BookVO> listAllBook();	// 전체 상품 정보 조회
	public void insertBook(BookVO book);		// 상품 정보 등록
	public void updateBook(BookVO book);		// 상품 정보 수정
	public void deleteBook(String bookNo);		// 상품 정보 삭제
	public BookVO detailViewBook(String bookNo);			// 상세 상품 정보 조회(1개의 상품만 조회)
	String bookNoCheck(String bookNo);
	ArrayList<BookVO> bookSearch(HashMap<String, Object> map);
}
