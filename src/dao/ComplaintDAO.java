package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.ComplaintVO;
import vo.CountryVO;

public class ComplaintDAO {
	public void insert(ComplaintVO v){
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
	public void update(String id)
	{
		Session session=null;
		long id1=Long.valueOf(id);
		try
		{
			
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		Transaction tr=session.beginTransaction();
		System.out.println("updating record");
		String query = "update ComplaintVO as c set status='checked' where c.user_id.user_id="+id1;
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
				
				Query q=session.createQuery("from ComplaintVO where status='pending'");
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
}
