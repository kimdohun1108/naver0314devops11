package TEST;

public class d2 {
	class Solution {
	    public int solution(int a, int b, int c, int d) {
	        int sum = 0;
	        int e;
	        if(a==b) 
	        {
	            if(a==c) 
	            {
	                if(a==d) 
	                {    
	                    sum = 1111 * a; // a==b==c==d
	                } 
	                else 
	                {        
	                    sum = (10 * a + d)^2; // a==b==c
	                }
	            } 
	            else if(a==d) 
	            { 
	                sum = (10 * a + c)^2; // a==b==d
	            }
	            else 
	            {    
	                if(c==d) 
	                {   
	                	if(a-c<0)
	                	{
	                		e = (a-c) * -1;
	                	}
	                	else
	                	{
	                		e = (a-c);
	                	}
	                    sum = (a + c) * e; // a==b, c==d
	                } 
	                else 
	                {        
	                    sum = c * d; // a==b
	                }
	            }

	        } 
	        else if(a==c) 
	        {
	            if(a==d) 
	            {    
	                sum = (10 * a + b)^2; //a==c==d
	            } 
	            else 
	            {        
	                if(b==d)
	                {    
	                	if(a-b<0)
	                	{
	                		e = (a-b) * -1;
	                	}
	                	else
	                	{
	                		e = (a-b);
	                	}
	                    sum = (a + b) * e; // a==c, b==d
	                } 
	                else 
	                {        
	                    sum = b * d; // a==c
	                }
	            }

	        } 
	        else if(a==d) 
	        {
	            if(b==c) 
	            {        
                	if(a-b<0)
                	{
                		e = (a-b) * -1;
                	}
                	else
                	{
                		e = (a-b);
                	}
                    sum = (a + b) * e; //a==d, b==c
	            } 
	            else
	            {            
	                sum = b * c; //a==d
	            }
	        }
	        else 
	        {
	            if(b==c) 
	            {
	                if(c==d) 
	                {    
	                    sum = sum = (10 * b + a)^2; // b==c==d
	                } 
	                else
	                {        
	                    sum = a * d; //b==c
	                }
	            } 
	            else if(b==d)
	            { 
	                sum = a * c; //b==d
	            }
	            else if(c==d)
	            { 
	                sum = a * b; //c==d
	            } 
	            else 
	            {
	            	int eq[] = new int[4];
	            	eq[0] = a;
	        		eq[1] = b;
	        		eq[2] = c;
	        		eq[3] = d;
	        		//오름차순 정렬
	    			for(int i=0;i<4;i++)
	    			{
	    				for(int j=1;j<4;j++)
	    				{
	    					if(eq[i]>eq[j])
	    					{
	    						int temp=eq[i];
	    						eq[i]=eq[j];
	    						eq[j]=temp;
	    					}
	    				}
	    			}
	    			sum = eq[0]; // a!=b!=c!=d
	            }
	        }
	        return sum;
	    }
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
 