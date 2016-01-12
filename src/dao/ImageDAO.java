package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CountryVO;
import vo.ImageVO;
import vo.VideoVO;

public class ImageDAO {
public void insert(ImageVO VO_obj){
		
		Session session = null;
		
		 try{
			 SessionFactory sessionFactory = new Configuration().configure()
						.buildSessionFactory();
				session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction(); 
			   
			  			  			
			  session.save(VO_obj);
			  System.out.println("Done dao");
			  tr.commit();
			
			
	    }catch(Exception e){
		e.printStackTrace();
			  
			  }finally{
			        
				      session.close();
			  
			          }
			  
			  
		
	}
public void update(ImageVO i)
{
	Session session=null;
	
	try
	{
		
	SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
	session=sessionfactory.openSession();
	Transaction tr=session.beginTransaction();
	System.out.println("updating record");
	session.update(i);
	
	tr.commit();
	System.out.println("Done");	
	}
	catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	finally
	{
		//session.flush();
		//session.close();
	}
}
	
public List search(long n){
	
	Session session = null;
	List temp = null;
	  try{
		  
		  SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
	
		  Query q = session.createQuery("from ImageVO as a where a.user_id.user_id="+n);
	 
		  temp = q.list();
	  	System.out.println("Done..");
	  }catch(Exception e){
		  				  System.out.println(e.getMessage());
	  					 }/*finally{
	  						     session.close();
	  					 		 }*/
	 return temp;
	
	}	

}
