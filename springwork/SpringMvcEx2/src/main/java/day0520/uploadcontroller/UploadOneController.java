package day0520.uploadcontroller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadOneController {
	@GetMapping("/uploadform1")
	public String upload1()
	{
		return "upload/uploadform1";
	}
	
	@PostMapping("/upload1")
	public String uploadPhoto1(
			@RequestParam String title,
			@RequestParam("upload") MultipartFile upload,
			HttpServletRequest request,
			Model model
			)
	{
		//tomcat������ ������ ������Ʈ���� �̹����� ���ε�� ��� ���ϱ�
		///resources/upload���� ����
		String realFolder = request.getSession().getServletContext().getRealPath("/resources/upload");
		System.out.println(realFolder);
		//���ε��� ���ϸ�
		//String filename = upload.getOriginalFilename();
		
		//���ÿ� �������� ������ �����ؼ� ���ε��Ұ�� ���� ���ϸ��� �������
		//���� �߻�. �׷��� ���� ���ϸ����� ���ε� ***
		String filename = UUID.randomUUID()+".jpg";
		
		//���� ��ο� �ش� ���ϸ����� ���ε�
		try {
			upload.transferTo(new File(realFolder+"/"+filename));
			//���ε�� ������ ���ٸ� model�� ����
			model.addAttribute("title",title);
			model.addAttribute("photo",filename);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "upload/resultphoto1";
	}
}
