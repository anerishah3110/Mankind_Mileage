package dao;

import java.util.ArrayList;
import java.util.Iterator;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import vo.CountryVO;
import vo.EventVO;
import vo.VideoVO;



public class VideoDAO {
	
	
	public void insert(VideoVO VO_obj){
		
		Session session = null;
		
		 try{
			 SessionFactory sessionFactory = new Configuration().configure()
						.buildSessionFactory();
				session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction(); 
			   
			  			  			
			  session.save(VO_obj);
			  System.out.println("Done dao");
			  tr.commit();
			
			
	    }catch(Exception e){
		e.printStackTrace();
			  
			  }finally{
			        
				      session.close();
			  
			          }
			  
			  
		
	}
	
		
  public List getElementByID(VideoVO VO_obj){
		
		Session session = null;
		List temp = new ArrayList();
		
		
		try{
		  
			SessionFactory sessionFactory = new Configuration().configure()
					.buildSessionFactory();
			session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
		 
		    Query q = session.createQuery("FROM VideoVO WHERE video_id = '"+VO_obj.getVideo_id()+"'");
		    temp = q.list();
		
		    tr.commit();
		 
		 }catch(Exception e){
			                 System.out.println(e.getMessage());
		  					}finally{
		  							
		  							session.close();
		  
		  							}
		  
		 return temp;
		
			
	}
  
  public void update(VideoVO VO_obj){
	  
		Session session = null;
		
		  try{
		  
			  SessionFactory sessionFactory = new Configuration().configure()
						.buildSessionFactory();
				session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
		 
			  session.update(VO_obj);
		 
			  tr.commit();
		 
		  }catch(Exception e){
			  				
			  				System.out.println(e.getMessage());
		  					}finally{
		  						    session.close();
		  							}
		  
		}
	
  
	public void delete(VideoVO VO_obj){
		
		Session session = null;
		
		 try{
			  
			 SessionFactory sessionFactory = new Configuration().configure()
						.buildSessionFactory();
				session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();

/*			 
 *          Method 1 
 *          Query q = session.createQuery("from AttachmentVO where dID = :dID ");
			  q.setParameter("dID", VO_obj.getdID());
			  AttachmentVO dvo = (AttachmentVO)q.list().get(0);
*/
			
			 /* Method 2 */ 
			  VideoVO dvo = (VideoVO)session.get(VideoVO.class, VO_obj.getVideo_id());
			  
			  

			  session.delete(dvo);
			
			  tr.commit();
			
			
			  }catch(Exception e){
				  	e.printStackTrace();
				  				//System.out.println(e.getMessage());
			  					}finally{
			  							session.close();
			  
			  							}
			  
			  
		
	}
	
  public List search(){
		
		Session session = null;
		List temp = null;
		  try{
		  
			  SessionFactory sessionFactory = new Configuration().configure()
						.buildSessionFactory();
				session = sessionFactory.openSession();
				Transaction tr = session.beginTransaction();
		
			  Query q = session.createQuery("FROM VideoVO ");
		 
			  temp = q.list();
		  	
		  }catch(Exception e){
			  				  System.out.println(e.getMessage());
		  					 }finally{
		  						     session.close();
		  					 		 }
		 return temp;
		
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
				
				Query q=session.createQuery("from VideoVO ORDER BY video_id DESC");
				ls=q.list();
				
				/*for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
					EventVO object = (EventVO) iterator.next();
					//System.out.println(object.getCountry_id().getCountry_name());
				}
				*/
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

  
  /*public List  search(VideoVO VO_obj){
		
		Session session = null;
	    List temp = null;
	 
	    try{
	 
	    	session = MyUtility.getSession();// Static Method which makes only one object as method is static
			

	    	Query q = session.createQuery("FROM VideoVO WHERE attachmentType like '%"+VO_obj.getVideo_id() +"%' ");

	    	temp = q.list();
	
	    }catch(Exception e){
	 		    	System.out.println(e.getMessage());
	    		}finally{
	    				session.close();
	    				}
	return temp;
}
*/	
	
	


public List edit(VideoVO x) {
	Session session = null;
	List ls = null;
	try {

		SessionFactory sessionFactory = new Configuration().configure()
				.buildSessionFactory();
		session = sessionFactory.openSession();
		org.hibernate.Transaction tr = session.beginTransaction();
		System.out.println("searching Record");
		Query q = session.createQuery("from VideoVO where id="
				+ x.getVideo_id());
		ls = q.list();
		tr.commit();
		System.out.println("Done");
	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return ls;

}
}