package co.company.MatchFootball.vo;

import lombok.Data;

@Data
public class MmanagerVO {
	int pageUnit=4 ; 		//한페이지 출력할 레코드 건수
	int pageSize=10 ; 		//페이지번호 수 (5) 1~ 5까지
	int totalPageCount;     //페이지 갯수
	int totalRecord ;		//전체 레코드건수
	int page = 1;			//현재 페이지
	int startPage;          //페이지 리스트의 첫 페이지 번호
	int endPage;            //페이지 리스트의 마지막 페이지 번호 
	int first;
	int last;
	
	
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		totalPageCount = totalRecord / pageUnit + 
				   ( (totalRecord % pageUnit)>0 ? 1 : 0 );
		startPage = (page-1)/pageSize * pageSize + 1;
		endPage = (page-1)/pageSize  * pageSize  + pageSize ;
		if ( endPage > getTotalPageCount() )
			endPage = getTotalPageCount() ;
	}
}
