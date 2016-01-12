package dao;

import vo.CategoryVO;
import vo.CountryVO;
import vo.SubcatVO;





import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class CategoryDAO {
	public void insert(CategoryVO v){
		Session session = null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			// Create new instance of Contact and set values in it by reading
			// them from form object
			System.out.println("Inserting Record");
			// System.out.println(r.getCat_id());
			session.save(v);
			// session.save(a);
			tr.commit();
			System.out.println("Done");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*finally{
			
			session.flush();
			session.close();

		}
*/

	}
	public List load()
	{
		System.out.println("*********");
		List ls=new ArrayList();
		Session session=null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			System.out.println("done");
			 Query q=session.createQuery("from CategoryVO");
			
			 
			 ls=q.list();
			 System.out.println(ls.size());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			
			//session.flush();
			//session.close();

		}

		return ls;
	}
	public List search(CategoryVO x){
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				
				Query q=session.createQuery("from CategoryVO");
				ls=q.list();
				Iterator itr =  ls.iterator();
			      
			      
			     
			      System.out.println("Fetching file Names from session :");
			      int j = 0 ;
			      while (itr.hasNext()) {  
								      	System.out.println(" File Name "+ (++j) +" :"+itr.next());
										}
			    
				
				
				
				t1.commit();
				System.out.println("Done");
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			finally
			{
				//session.flush();
				//session.close();
			}
			
			return ls;
		
			}
	}
	public List edit(CategoryVO x) {
		Session session = null;
		List ls = null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			org.hibernate.Transaction tr = session.beginTransaction();
			System.out.println("searching Record");
			Query q = session.createQuery("from CategoryVO where id="
					+ x.getCategory_id());
			ls = q.list();
			tr.commit();
			System.out.println("Done");
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return ls;

	}
	public void update(CategoryVO catvo)
	{
		Session session=null;
		
		try
		{
			
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		Transaction tr=session.beginTransaction();
		System.out.println("updating record");
		session.update(catvo);
		
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
	public Boolean delete(CategoryVO x) {
		// TODO Auto-generated method stub
		
		Session session = null;
		
		 try{
			  
			 SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
				session=sessionfactory.openSession();
			 
			  Transaction t= session.beginTransaction();
			  
			 	  
			  
			  session.delete(x);
			
			  t.commit();
			
		 }
			  catch (Exception e) {
					// TODO: handle exception
				  e.printStackTrace();
					String s[]=e.getCause()!=null?e.getCause().toString().split(":"):null;
					
					if(s!=null && s[0].equals("java.sql.BatchUpdateException")){
					
					return false;

				}
		 
		}
		 return true;
	}}
