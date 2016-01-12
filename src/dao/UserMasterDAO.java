package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import vo.CountryVO;
import vo.UserMasterVO;

public class UserMasterDAO {
	public void insert(UserMasterVO v){
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
	public List search()
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				
				Query q=session.createQuery("from UserMasterVO");
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
	public List search_user_id()
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("select user_id from UserMasterVO");
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

	
	public List search_p(UserMasterVO u)
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery(" from UserMasterVO where user_id='"+u.getUser_id()+"' AND user_password='"+u.getUser_password()+"'" );
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
	public List search_type(String id)
	{
		long id1=Long.valueOf(id);
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("select user_type,user_password from UserMasterVO where user_id="+id );
			ls=q.list();
			System.out.println("List Suze Isssssssssssssss::::::"+ls.size());
			
			
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

	public List search1(long id)
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("from NormalWithoutSiblingVO where user_id="+id );
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
	public List search_id()
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("select MAX(user_id) from UserMasterVO ");
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
	
	public List search2(long id)
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("from DonationVO where user_id="+id );
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
	public List search3(long id)
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("from CordbloodStorageVO where user_id="+id );
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
	public void update(long id){
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				String query = "update UserMasterVO set user_status='deactive' where user_id="+id;
				System.out.println("query::::::::::::::"+query);
				Query q=session.createQuery(query);
				q.executeUpdate();
				
				
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
			
			
		
			}


	}
}