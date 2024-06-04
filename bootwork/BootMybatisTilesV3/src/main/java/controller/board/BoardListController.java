package controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.ReBoardDto;
import data.service.BoardAnswerService;
import data.service.ReBoardService;


@Controller
public class BoardListController {
	@Autowired
	private ReBoardService boardService;
	
	@Autowired
	private BoardAnswerService answerService;
	
	@GetMapping("/board/list")
	public String list(
			@RequestParam(defaultValue = "1") int currentPage,
			Model model
			) 
	{
		//총글의 개수
		int totalCount = boardService.getTotalCount();
		//페이징에 필요한 변수들
		int perPage = 10; //한페이지당 보여질 글의 개수
		int perBlock = 5; //현재 블록에 보여질 개수
		int start; //db에서 가져올 시작번호
		int startPage; //각 블록에 보여질 시작페이지
		int endPage; //각 블록에 보여질 끝페이지
		int no; //각 페이지에 보여질 시작번호
		int totalPage; //총 페이지수

		//총 페이지수 구하기
		totalPage = totalCount / perPage + totalCount % perPage;
		//각 블럭당 시작페이지 구하기
		startPage = (currentPage-1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
		//endPage가 총 페이지수보다 커서는 안된다
		if(endPage>totalPage)
		{
			endPage = totalPage;
		}
		//db에서 가져올 글의 시작번호
		//(예)1페이지 : 0, 2페이지 : 5~
		//각 페이지당 5개만 보여질경우 햔재페이지에 따라서 시박번호가 달라지도록 공식 설정
		start = (currentPage-1) * perPage;
		//각 페이지에 출력할 시작번호
		//총 개수가 20개일경우 1페이지는 20, 2페이지는 15....
		no = totalCount - (currentPage-1) * perPage;
		//목록가져오기
		List<ReBoardDto> list = boardService.getPagingList(start, perPage);
		
		//list의 각 dto에 댓글 개수 저장
		for(ReBoardDto dto:list)
		{
			//num에 해당하는 각 댓글의 개수 저장
			dto.setRecount(answerService.getAnswerData(dto.getNum()).size());
		}

		//model add
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("list", list);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("no", no);


		return "board/boardlist";
	}

}
