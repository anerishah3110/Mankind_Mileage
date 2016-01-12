package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CategoryVO;
import vo.EventVO;

public class EventDAO {
	public void insert(EventVO v){
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
	public List search(){
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				
				Query q=session.createQuery("from EventVO");
				ls=q.list();
				
				for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
					EventVO object = (EventVO) iterator.next();
					//System.out.println(object.getCountry_id().getCountry_name());
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
	
	public List searchDesc(){
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				
				Query q=session.createQuery("from EventVO ORDER BY event_id DESC");
				ls=q.list();
				
				for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
					EventVO object = (EventVO) iterator.next();
					//System.out.println(object.getCountry_id().getCountry_name());
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
	

	public List edit(EventVO x) {
		Session session = null;
		List ls = null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			org.hibernate.Transaction tr = session.beginTransaction();
			System.out.println("searching Record");
			Query q = session.createQuery("from EventVO where id="
					+ x.getEvent_id());
			ls = q.list();
			tr.commit();
			System.out.println("Done");
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return ls;

	}
	public void update(EventVO catvo)
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
	public void delete(EventVO x) {
		// TODO Auto-generated method stub
		
		Session session = null;
		
		 try{
			  
			 SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
				session=sessionfactory.openSession();
			 
			  Transaction t= session.beginTransaction();
			  
			  EventVO category = (EventVO)session.get(EventVO.class, x.getEvent_id());	  
			  
			  session.delete(category);
			
			  t.commit();
			
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






}
