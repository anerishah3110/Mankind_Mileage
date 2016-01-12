package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.PackageVO;
import vo.SubcatVO;


public class PackageDAO {
	public void insert(PackageVO v){
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
	public void update(PackageVO p)
	{
		Session session=null;
		
		try
		{
			
		SessionFactory sessionfactory=new Configuration().configure().buildSessionFactory();
		session=sessionfactory.openSession();
		Transaction tr=session.beginTransaction();
		System.out.println("updating record");
		session.update(p);
		
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
		Session session=null;
		List ls=new ArrayList();
		try{
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			// Create new instance of Contact and set values in it by reading
			// them from form object
			System.out.println("Searching Record");
			Query q=session.createQuery("from PackageVO");
			ls=q.list();
			tr.commit();
			System.out.println("Done");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			
			//session.flush();
			//session.close();

		}

		return ls;
	}
	public List edit(PackageVO v)
	{
		Session session=null;
		List ls=new ArrayList();
		try{
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			// Create new instance of Contact and set values in it by reading
			// them from form object
			System.out.println("Editing Record");
			Query q=session.createQuery("from PackageVO where id=" +v.getPackage_id());
			ls=q.list();
			tr.commit();
			System.out.println("Done");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			
			//session.flush();
			//session.close();

		}
		return ls;
	}
	public void delete(PackageVO x) {
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
			 Query q=session.createQuery("from PackageVO");
			
			 
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


}
