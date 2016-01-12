package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CategoryVO;
import vo.CountryVO;
import vo.LabRegVO;
import vo.ReportVO;

public class ReportDAO {
	public void insert(ReportVO v){
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
	public List search_p(long value){
		{
			List ls=new ArrayList();
			Session session=null;
			try
			{
				SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
				session=sessionFactory.openSession();
				
				Transaction t1=session.beginTransaction();
				
				System.out.println("Searching Record");
				String query = "from ReportVO as rv where rv.s_id.s_id="+value;
				System.out.println("query::::::::::::::"+query);
				Query q=session.createQuery(query);
				ls=q.list();
				System.out.println("daosizeee"+ls.size());
				
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
		public List search_report(ReportVO value){
			{
				List ls=new ArrayList();
				Session session=null;
				try
				{
					SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
					session=sessionFactory.openSession();
					
					Transaction t1=session.beginTransaction();
					
					System.out.println("Searching Record");
					String query = "select DISTINCT rv.s_id.name,rv.a1,rv.a2,rv.b1,rv.b2,rv.dr1,rv.dr2 from ReportVO as rv,UserMasterVO as u where u.user_type='donor' and  rv.a1='"+value.getA1()+"' and rv.a2='"+value.getA2()+"' and rv.b1='"+value.getB1()+"' and rv.b2='"+value.getB2()+"' and rv.dr1='"+value.getDr1()+"' and rv.dr2='"+value.getDr2()+"' and  rv.s_id.s_id!='"+value.getS_id().getS_id()+"'    ";
					System.out.println("query::::::::::::::"+query);
					Query q=session.createQuery(query);
					ls=q.list();
					System.out.println("daosizeee"+ls.size());
					
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
		public List search_sib_report(ReportVO value){
			{
				List ls=new ArrayList();
				Session session=null;
				try
				{
					SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
					session=sessionFactory.openSession();
					
					Transaction t1=session.beginTransaction();
					
					System.out.println("Searching Record");
					String query = "select DISTINCT rv.s_id.name,rv.a1,rv.a2,rv.b1,rv.b2,rv.dr1,rv.dr2 from ReportVO as rv,SiblingMapVO as s,LabRegVO as l where rv.s_id.s_id=s.s_id.s_id and s.u_id.user_id=l.u_id and rv.a1='"+value.getA1()+"' and rv.a2='"+value.getA2()+"' and rv.b1='"+value.getB1()+"' and rv.b2='"+value.getB2()+"' and rv.dr1='"+value.getDr1()+"' and rv.dr2='"+value.getDr2()+"'     ";
					System.out.println("query::::::::::::::"+query);
					Query q=session.createQuery(query);
					ls=q.list();
					System.out.println("daosizeee"+ls.size());
					
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
