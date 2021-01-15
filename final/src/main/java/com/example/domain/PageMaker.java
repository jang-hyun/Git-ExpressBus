package com.example.domain;

public class PageMaker {
	private int page = 1;
	private int perPageNum = 5;
	private int outStart;
	private int outLast;
	private int boardType = -1;
	private String searchType = "seq_board";
	private String keyWord = "";
	private String sort;
	private String sortType = "desc";
	private int totalCount;
	private int lastPage;
	private boolean prev;
	private boolean next;

	public PageMaker() {

	}

	PageMaker(int page, int perPageNum) {
		this.page = page;
		this.perPageNum = perPageNum;
	}

	public int getBoardType() {
		return boardType;
	}

	public void setBoardType(int boardType) {
		this.boardType = boardType;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getSortType() {
		return sortType;
	}

	public void setSortType(String sortType) {
		this.sortType = sortType;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}

	private void calcData() {
		int pg = this.totalCount / this.perPageNum;
		this.lastPage = this.totalCount % this.perPageNum == 0 ? pg : pg + 1;
		this.outStart = 1 + ((this.page - 1) * this.perPageNum);
		this.outLast = this.page * this.perPageNum;
		this.prev = this.page > 1 ? true : false;
		this.next = this.page < this.lastPage ? true : false;
	}

	public int getOutStart() {
		return outStart;
	}

	public int getOutLast() {
		return outLast;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	@Override
	public String toString() {
		return "PageMaker [page=" + page + ", perPageNum=" + perPageNum + ", outStart=" + outStart + ", outLast="
				+ outLast + ", boardType=" + boardType + ", searchType=" + searchType + ", keyWord=" + keyWord
				+ ", sort=" + sort + ", sortType=" + sortType + ", totalCount=" + totalCount + ", lastPage=" + lastPage
				+ ", prev=" + prev + ", next=" + next + "]";
	}

}