package LdStore.Service.User;

import org.springframework.stereotype.Service;

import LdStore.Dto.PaginatesDto;

@Service
public class PanigatesServiceImpl implements IPaginatesService {

	public PaginatesDto GetInfoPanigates(int totalData, int limit, int curentPage) {
		PaginatesDto panigates = new PaginatesDto();
		panigates.setLimit(limit);
		panigates.setTotalPage(SetInfoTotalPage(totalData, limit));
		
		panigates.setCurrentPage(CheckCurrentPage(curentPage, panigates.getTotalPage()));
		
		int start = FindStart(panigates.getCurrentPage(),limit);
		panigates.setStart(start);
		int end = FindEnd(panigates.getStart(), limit, totalData);
		panigates.setEnd(end);
		return panigates;
	}
	
	private int FindStart(int currentPage, int limit) {
	
		return (( currentPage - 1)*limit)+1;
	}

	private int FindEnd(int start, int limit, int totalData) {
		
		return start + limit > totalData ? totalData : (start + limit) -1 ;
	}

	
	private int SetInfoTotalPage(int totalData, int limit) {

		int totalPage = 0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;

	}

	public int CheckCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}

}
