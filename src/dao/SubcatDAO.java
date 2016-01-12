package dao;

import vo.StateVO;
import vo.SubcatVO;
import vo.CategoryVO;



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

public class SubcatDAO {
	public void insert(SubcatVO v){
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
		System.out.println("*********");
		List ls=new ArrayList();
		Session session=null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			System.out.println("done");
			 Query q=session.createQuery("from SubcatVO");
			
			 
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

	public List search(SubcatVO x){
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				
				Query q=session.createQuery("from SubcatVO");
				ls=q.list();
				
				for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
					SubcatVO object = (SubcatVO) iterator.next();
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
	
	public List edit(SubcatVO x) {
		Session session = null;
		List ls = null;
		try {

			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			org.hibernate.Transaction tr = session.beginTransaction();
			System.out.println("searching Record");
			Query q = session.createQuery("from SubcatVO where id="
					+ x.getSubcat_id());
			ls = q.list();
			tr.commit();
			System.out.println("Done");
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return ls;

	}
	public void update(SubcatVO subcatvo)
	{
		Session session=null;
		
		try
		{
			
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		Transaction tr=session.beginTransaction();
		System.out.println("updating record");
		session.update(subcatvo);
		
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
	public void delete(SubcatVO x) {
		Session session = null;

		try {
			SessionFactory sessionFactory = new	Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			
			session.delete(x);
			transaction.commit();
			System.out.println("Done state");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//session.flush();
			//session.close();

		}

	}
	

	
				
				}

