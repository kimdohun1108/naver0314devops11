package day0326;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;

class NewFrame extends JFrame{
	public NewFrame()
	{
		super("Hello");
		this.setLocation(300,100);//시작위치
		this.setSize(300,300);//너비, 높이
		//윈도우 이벤트 추가
		this.addWindowListener(new WindowAdapter() {
			@Override
			public void windowClosing(WindowEvent e) {
				// TODO Auto-generated method stub
				super.windowClosing(e);
				System.out.println("윈도우를 종료합니다.");
				System.exit(0);
			}
		});
		//프레임 보이게 하기
		this.setVisible(true);
	}
}

public class Ex10AnonyWindow {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NewFrame f = new NewFrame();
	}

}
