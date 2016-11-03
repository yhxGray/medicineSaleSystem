package medicineSale;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Test {
//	public static void main(String[] args) {
//		TestExceptionFunction();
//	}
	
	public static void main(String args[]){
//        String str="您好{options{abc}}评论了您的{options{def}}中的{options{trip:63}}";
//        ArrayList<String>  word=new ArrayList<String>();
//        int m=0,n=0;
//        int count=0;
//        for(int i=0;i<str.length();i++){
//            if(str.charAt(i)=='{'){
//                if(count==0){
//                    m=i;
//                }
//                count++;
//            }
//            if(str.charAt(i)=='}'){
//                count--;
//                if(count==0){
//                    n=i;
//                    word.add(str.substring(m, n+1));
//                }
//            }
//             
//        }
//        for(String a : word){
//            System.out.println(a);
//        }
		
		regexTest();
    }
	 public static  void TestExceptionFunction()
     {
         int i = 10;
         int j = 0;
         double vaule = 0.0;
         try{
        	 vaule = i / j;
         }catch(Exception e){
        	 try {
				throw e;
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
         }
        
         test2();
     }
	 public static void test2(){
		 System.out.println("www");
	 }
	 
	 public static void regexTest(){
		 String str="a23d;\nd";
		 Pattern p=Pattern.compile("[.\n]");
		 Matcher m=p.matcher(str);
		 while(m.find()){
			 System.out.println(m.group());
		 }
		 System.out.println("end");
	 }
}
