package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CountryVO;
import vo.NormalWithoutSiblingVO;


public class NormalWithoutSiblingDAO {
	public void insert(NormalWithoutSiblingVO v){
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
	public List search_p(String id)
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
			
			Query q=session.createQuery("select email_id from NormalWithoutSiblingVO as d where d.user_id.user_id="+id1);
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

	public void update(String addr,String cno,String email,long id)
	{
		Session session=null;
		
		try
		{
			
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		Transaction tr=session.beginTransaction();
		System.out.println("updating record");
		String query = "update NormalWithoutSiblingVO set address='"+addr+"',contact_no='"+cno+"',email_id='"+email+"' where user_id='"+id+"'    ";
		System.out.println("query::::::::::::::"+query);
		Query q=session.createQuery(query);
		q.executeUpdate();
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
			
			Query q=session.createQuery("from NormalWithoutSiblingVO");
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
	public List count()
	{
		List ls=new ArrayList();
		Session session=null;
		try
		{
			SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
			session=sessionFactory.openSession();
			
			Transaction t1=session.beginTransaction();
			
			System.out.println("Searching Record");
			
			Query q=session.createQuery("select count(*) from NormalWithoutSiblingVO");
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
