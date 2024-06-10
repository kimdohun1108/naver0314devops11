package controller.board;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BoardTransContrller {
	@PostMapping("/board/trans")
	public String textTrans(
			@RequestParam String text,
			@RequestParam String lang
			) 
	{
		 String clientId = "5he034dibb";//애플리케이션 클라이언트 아이디값";
	     String clientSecret = "3sOHVmkgNk6xivkZlcJ4JX91DWZEvyUGRAvSVMa8";//애플리케이션 클라이언트 시크릿값";
	        try {
	            String transtext = URLEncoder.encode(text, "UTF-8");
	            String apiURL = "https://naveropenapi.apigw.ntruss.com/nmt/v1/translation";
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("POST");
	            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
	            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
	            // post request
	            String postParams = "source=ko&target="+lang+"&text=" + transtext;
	            con.setDoOutput(true);
	            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
	            wr.writeBytes(postParams);
	            wr.flush();
	            wr.close();
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 오류 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();
	            System.out.println(response.toString());
	            //변역된 response를 반환 (json형태로 된 String타입)
	            return response.toString();
	        } catch (Exception e) {
	            System.out.println(e);
	            return null; //실패시 null반환
	        }
	}
	
}
