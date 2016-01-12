package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import vo.EventVO;

import dao.EventDAO;

/**
 * Servlet implementation class EventController
 */
@WebServlet("/EventController")
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		 if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		 else if(flag!=null && flag.equals("edit"))
			{
				edit(request, response);
				
			}
		 else{
			 delete(request, response); 
		 }
	}
	public void search(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{

		
		EventDAO y = new EventDAO();
		EventVO x = new EventVO();
		
		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/event_search.jsp");
		
		System.out.println("search complete");

	}	
	public void insert(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String s=request.getParameter("event_name");
		String s1=request.getParameter("event_description");
		String s2=request.getParameter("event_place");
		String s3=request.getParameter("event_date");
		
		System.out.println("hellooooooooooooo"+s3);
		EventVO e = new EventVO();
		e.setEvent_name(s);
		e.setEvent_description(s1);
		e.setEvent_place(s2);
		e.setEvent_date(s3);
		
		EventDAO d = new EventDAO();
		d.insert(e);
		
		
		}
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*CategoryDAO cc = new CategoryDAO();

		List ls = cc.load();
		System.out.println(ls);
*/

		String event_ID = request.getParameter("id");
	
		//System.out.println(state_ID);
		EventDAO y = new EventDAO();
		EventVO x = new EventVO();
		x.setEvent_id(Long.valueOf(event_ID));
		
		List ls1 = new ArrayList();
		ls1 = y.edit(x);

		HttpSession session = request.getSession();
		//session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		response.sendRedirect("Admin/edit_event.jsp");

	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cat_ID = request.getParameter("event_id");
		String category_name = request.getParameter("event_name");
		String category_description = request.getParameter("event_description");
		String event_place=request.getParameter("event_place");
		String event_date=request.getParameter("event_date");
		
		System.out.println("update method is called");
	

		EventVO x = new EventVO();
		x.setEvent_id(Long.valueOf(cat_ID));
		x.setEvent_name(category_name);
		x.setEvent_description(category_description);
		x.setEvent_date(event_date);
		x.setEvent_place(event_place);
		
		EventDAO y = new EventDAO();
		y.update(x);

		List ls1 = new ArrayList();

		ls1 = y.search();
		System.out.println("eeeeeeeeeeeeeeeeeeeeeee");

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);
		
		response.sendRedirect("Admin/event_search.jsp");
	}
	 protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	
			String event_ID = request.getParameter("event_id");

			String event_name = request.getParameter("event_name");
			String event_description = request.getParameter("event_description");
			String s2=request.getParameter("event_place");
			String s3=request.getParameter("event_date");
			
	    		
			EventVO x = new EventVO();
	    	
	    	x.setEvent_id(Long.valueOf(event_ID));
			x.setEvent_name(event_name);
			x.setEvent_description(event_description);
			x.setEvent_date(s3);
			x.setEvent_place(s2);
			System.out.println("delete start");
			
			
			EventDAO y = new EventDAO();
	    	
			y.delete(x);
			
			List ls1 = new ArrayList();

			ls1 = y.search();



			search(request, response);
			System.out.println("deletated");	
		}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		 if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		 else if(flag!=null && flag.equals("edit"))
			{
				edit(request, response);
				
			}
		 else if(flag!=null && flag.equals("update"))
			{
				update(request, response);
				
			}
		 else if(flag!=null && flag.equals("insert"))
		 {
			 insert(request,response);
			 response.sendRedirect("Admin/Event.jsp");
		 }
		 else{
			 delete(request, response); 
		 }

	}

}
