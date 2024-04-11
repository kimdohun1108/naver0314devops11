package day0401;

public class Ex1Thread extends Thread{
	private String threadName;
	private int count;
	
	public Ex1Thread(String threadName,int count) {
		// TODO Auto-generated constructor stub
		this.threadName=threadName;
		this.count=count;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=1;i<=count;i++)
		{
			System.out.println(threadName+":"+i);
		}
		
		super.run();
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Ex1Thread ex1=new Ex1Thread("1번쓰레드", 300);
		Ex1Thread ex2=new Ex1Thread("2번쓰레드", 300);
		Ex1Thread ex3=new Ex1Thread("3번쓰레드", 300);
		ex1.start();
		ex2.start();
		ex3.start();
	}

}
