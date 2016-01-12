package dao;

import vo.CountryVO;
import vo.StateVO;



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

public class CountryDAO {
	public void insert(CountryVO v){
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
		finally{
			
			//session.flush();
			//session.close();

		}


	}
	public List load()
	{
		List ls=new ArrayList();
		Session session=null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			System.out.println("done");
			 Query q=session.createQuery("from CountryVO");
			 ls=q.list();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			
			//session.flush();
			//session.close();

		}

		return ls;
	}


public List search(CountryVO v){
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("from CountryVO");
			ls=q.list();
			
			
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
public List edit(CountryVO x) {
	Session session = null;
	List ls = null;
	try {

		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		session = sessionFactory.openSession();
		org.hibernate.Transaction tr = session.beginTransaction();
		System.out.println("searching Record");
		Query q = session.createQuery("from CountryVO where id="
				+ x.getCountry_id());
		ls = q.list();
		tr.commit();
		System.out.println("Done");
	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return ls;

}

public void update(CountryVO countryvo)
{
	Session session=null;
	
	try
	{
		
	SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
	session=sessionfactory.openSession();
	Transaction tr=session.beginTransaction();
	System.out.println("updating record");
	session.update(countryvo);
	
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

public Boolean delete(CountryVO x) {
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
}
}