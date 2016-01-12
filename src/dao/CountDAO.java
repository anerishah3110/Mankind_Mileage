package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CountVO;
import vo.CountryVO;

public class CountDAO {
	public void insert(CountVO v){
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
				
				Query q=session.createQuery("SELECT c.positive,c.negative FROM CountVO as c");
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
	public void update(int p,int n)
	{
		Session session=null;
		
		try
		{
			
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		Transaction tr=session.beginTransaction();
		System.out.println("updating record");
		Query q=session.createQuery("update CountVO set positive='"+p+"',negative='"+n+"' where id='1'            ");
		
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


}
