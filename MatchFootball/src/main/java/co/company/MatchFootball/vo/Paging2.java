package co.company.MatchFootball.vo;

public class Paging2 {
	int pageUnit=10 ; 		//한페이지 출력할 레코드 건수
	int pageSize=10 ; 		//페이지번호 수 (5) 2~ 5까지
	int totalPageCount;     //페이지 갯수
	int totalRecord ;		//전체 레코드건수
	int pg = 1;//현재 페이지
	int startPage;          //페이지 리스트의 첫 페이지 번호
	int endPage;            //페이지 리스트의 마지막 페이지 번호 
	int first;
	int last;
	
	public int getFirst() {
		first = (getPg() - 1) * getPageUnit() + 1;
		return first;
	}
	public int getLast() {
		last = getPg() * getPageUnit();
		return last;
	}

	
	public int getPageUnit() {
		return pageUnit;
	}
	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}

	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		totalPageCount = totalRecord / pageUnit + 
				   ( (totalRecord % pageUnit)>0 ? 1 : 0 );
		startPage = (pg-1)/pageSize * pageSize + 1;
		endPage = (pg-1)/pageSize  * pageSize  + pageSize ;
		if ( endPage > getTotalPageCount() )
			endPage = getTotalPageCount() ;
	}

	public int getPg() {
		return pg;
	}
	public void setPg(int page2) {
		this.pg = page2;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	@Override
	public String toString() {
		return "Paging2 [pageUnit=" + pageUnit + ", pageSize=" + pageSize + ", totalPageCount=" + totalPageCount
				+ ", totalRecord=" + totalRecord + ", page2=" + pg + ", startPage=" + startPage + ", endPage="
				+ endPage + ", first=" + first + ", last=" + last + "]";
	}	
	
}
