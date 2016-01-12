package controller;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import vo.CountVO;
import vo.FeedbackVO;
import dao.CountDAO;
import dao.FeedbackDAO;


public class Review implements Runnable {
	
//	int p1=0,n=0;
	/*CountVO v;
	Review(CountVO v){
		this.v = v;
	}*/
	public void run() {
		// TODO Auto-generated method stub
		//while(true){
		FeedbackDAO d=new FeedbackDAO();
		List ls=d.search();
		System.out.println("listt"+ls.size());
		//HttpSession session=request.getSession();
		//session.setAttribute("feedback_list", ls);
		try{
			File file = new File("E:/Feedback.txt");
			if (!file.exists()) {
				file.createNewFile();
			}

			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			Iterator itr =  ls.iterator();



			System.out.println("Fetching file Names from session :");
			int j = 0 ;
			while (itr.hasNext()) { 
				Object obj=ls.get(j);


				bw.write(obj.toString()+"\n");
				System.out.println(" File Name "+ (++j) +" :"+itr.next());
			}



			bw.close();
			fw.close();


			/*FileReader fr1=new FileReader("C:/Users/kavisha mehta/Desktop/timepass1.txt");
				BufferedReader br1=new BufferedReader(fr1);*/
			String sCurrentLine;
			String sCurrentLine1;
			String[] a;
			//int[] res = null;
			String[] a1;
			int p1=0,n=0;
			ArrayList positive=new ArrayList<>();
			ArrayList negative=new ArrayList<>();
			System.out.println("hashhhhhhhhhhhhhhh");
			//Collection value;
			HashMap h=new HashMap<>();
			HashMap result=new HashMap<>();
			FileReader fr=new FileReader("E:/Feedback.txt");
			BufferedReader br=new BufferedReader(fr);
			while((sCurrentLine = br.readLine()) != null){
				System.out.println("inside 1stwhileee");
				String temp=sCurrentLine;
				//StringTokenizer st=new StringTokenizer(temp, " ");
				a=temp.split(" ");
				System.out.println("sizee"+a[0]);
				/*while(st.hasMoreTokens()){
						String token=st.nextToken();
						System.out.println("token"+token);*/
				FileReader fr1=new FileReader("C:/Users/Aneri/Desktop/timepass1.txt");
				BufferedReader br1=new BufferedReader(fr1);
				while((sCurrentLine1 = br1.readLine()) != null){
					System.out.println("inside 2ndwhileee");
					String temp1=sCurrentLine1;
					a1=temp1.split(":");
					System.out.println("after 2ndwhilee"+a1[0]);
					//for(int j1=0;j1<a.length;j1++){
					for(String x: a){
						if(x.equalsIgnoreCase(a1[0])){
							System.out.println("inside 1");
							h.put(x, a1[1]);

						}
						System.out.println("afteriff "+x);
					}

				}
				//}
				Collection p=h.values();
				Iterator itr1 = p.iterator();
				while (itr1.hasNext()) {
					System.out.println("kavishaaaa");
					String g=itr1.next().toString();
					System.out.println("anuu"+g);
					if(g.equals("+1")){
						positive.add(g);
					}
					else{
						negative.add(g);
					}
				}
				if(positive.size()>negative.size()){
					result.put(temp,"+1");
					p1++;
				}
				else{
					result.put(temp, "-1");
					n++;
				}


				positive.clear();
				negative.clear();
				h.clear();
				br1.close();
				
			}
			System.out.println("p1 "+p1+"n "+n);
			CountVO v=new CountVO();
		/*	v.setId(1);
			v.setNegative(n);
			v.setPositive(p1);*/
			CountDAO d1=new CountDAO();
			d1.update(p1,n);

			Thread.sleep(1800000);

		}
		catch(Exception e){
		}
	}

}
//}





