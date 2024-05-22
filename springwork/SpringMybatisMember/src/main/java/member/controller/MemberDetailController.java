package member.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import member.dto.MemberDto;
import member.service.MemberService;

@Controller
@RequiredArgsConstructor
public class MemberDetailController {
	@NonNull
	private MemberService memberService;
	
	@GetMapping("/member/detail") //공통 매핑을 안했을떄는 다써줘야함
	public String detail(@RequestParam int num,Model model)
	{
		MemberDto dto = memberService.getDate(num);
		model.addAttribute("dto",dto);
		
		return "member/detailpage";
	}
	
	@ResponseBody
	@PostMapping("/member/upload")
	public Map<String, String> uploadPhoto(
			@RequestParam("upload") MultipartFile upload,
			@RequestParam int num,
			HttpServletRequest request
			)
	{
		//업로드할 경로 구하기
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources");
		String photo = upload.getOriginalFilename();
		//업로드
		try {
			upload.transferTo(new File(uploadPath+"/"+photo));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//db에서 사진변경
		memberService.updatePhoto(num, photo);
		
		Map<String, String> map = new HashMap<>();
		System.out.println("num="+num); //콘솔로 num읽고
		map.put("photoname", photo);
		
		return map;
	}
}
