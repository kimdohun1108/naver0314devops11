package controller.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import data.dto.BoardAnswerDto;
import data.service.BoardAnswerService;
import data.service.MemberService;
import lombok.Builder;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;


//RestController는 ResponseBody 안붙히고 ajax로 보냄
@RestController
public class BoardAnswerController {
	@Autowired
	private BoardAnswerService answerService;
	@Autowired
	private MemberService memberService;
	
	@PostMapping("/ainsert")
	public void insertAnswer(
			@RequestParam int num,
			@RequestParam String content,
			HttpSession session
			) 
	{
		//로그인한 아이디얻기
		String myid = (String)session.getAttribute("loginid");
		//아이디에 해당하는 이름 얻기
		String writer = memberService.getData2(myid).getName();
		//dto에 필요한 데이터 넣기
		BoardAnswerDto dto = BoardAnswerDto.builder().myid(myid).writer(writer).content(content).num(num).build();
		//db insert
		answerService.insertAnswer(dto);
	}
	
}
