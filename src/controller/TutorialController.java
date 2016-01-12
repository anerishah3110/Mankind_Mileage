package controller;

import java.io.IOException;




import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;






import vo.CategoryVO;
import vo.EventVO;
import vo.PackageVO;
import vo.TutorialVO;
import dao.CategoryDAO;
import dao.EventDAO;
import dao.PackageDAO;
import dao.TutorialDAO;

/**
 * Servlet implementation class TutorialController
 */
@WebServlet("/TutorialController")
public class TutorialController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TutorialController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mode=request.getParameter("mode");
		if(mode.equalsIgnoreCase("search") && mode!=null)
		{
			search(request,response);
			response.sendRedirect("Admin/search_tutorial.jsp");
		}
		if(mode.equalsIgnoreCase("edit") && mode!=null)
		{
			edit(request,response);
			response.sendRedirect("Admin/edit_tutorial.jsp");
		}
		if(mode.equalsIgnoreCase("delete") && mode!=null)
		{
			delete(request,response);
			response.sendRedirect("Admin/search_tutorial.jsp");
		}
	}
	public void search(HttpServletRequest request,HttpServletResponse response){
		List ls=new ArrayList();
		
	
		TutorialDAO d1= new TutorialDAO();
		ls=d1.search();
		HttpSession session=request.getSession();
		session.setAttribute("searchTutorial", ls);
	

	}
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String tutorial_ID = request.getParameter("tutorial_id");
	
		//System.out.println(state_ID);
		TutorialDAO y = new TutorialDAO();
		TutorialVO x = new TutorialVO();
		x.setTutorial_id(Long.valueOf(tutorial_ID));
		
		List ls1 = new ArrayList();
		ls1 = y.edit(x);

		HttpSession session = request.getSession();
		//session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		

	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tutorial_ID = request.getParameter("id");
		String tutorial_name = request.getParameter("T_name");
		String tutorial_description = request.getParameter("T_des");
		String tutorial_path=request.getParameter("path");
		System.out.println("update method is called");
	

		TutorialVO x = new TutorialVO();
		x.setTutorial_id(Long.valueOf(tutorial_ID));
		x.setTutorial_name(tutorial_name);
		x.setTutorial_desc(tutorial_description);
		
		HttpSession session = request.getSession();
	    List myFileList = (List) session.getAttribute("fileList");
	    if(myFileList == null)
	    {
	    	x.setTutorial_path(tutorial_path);
	    }
	    else
	    {
	    	Iterator itr = myFileList.iterator();
	         
	         System.out.println("Reading for session");
	         int i =0;
	         while (itr.hasNext()) {
	     
	        	 x.setTutorial_path((String)itr.next());
	        	 
	        	 i++;
				}
			

			
			session.removeAttribute("fileList");
			

	    }
		
		TutorialDAO y = new TutorialDAO();
		y.update(x);

		List ls1 = new ArrayList();

		ls1 = y.search();
		System.out.println("eeeeeeeeeeeeeeeeeeeeeee");

	
		session.setAttribute("searchTutorial", ls1);
		
		
	}
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String tutorial_ID = request.getParameter("tutorial_id");

		System.out.println("delete is called");

		TutorialVO x = new TutorialVO();
		x.setTutorial_id(Long.valueOf(tutorial_ID));

		TutorialDAO y = new TutorialDAO();
		y.delete(x);
		
		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("searchTutorial",ls1);

	
		System.out.println("finish");
	}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mode=request.getParameter("mode");
		if(mode.equalsIgnoreCase("insert") && mode!=null)
		{
			insert(request,response);
			response.sendRedirect("Admin/Tutorial.jsp");
		}
		if(mode.equalsIgnoreCase("update") && mode!=null)
		{
			update(request,response);
			response.sendRedirect("Admin/search_tutorial.jsp");
		}
	}
	public void insert(HttpServletRequest request,HttpServletResponse response)
	{
		String tutorial_name=request.getParameter("T_name");
		String tutorial_description=request.getParameter("T_desc");
		
		TutorialVO e=new TutorialVO();
		e.setTutorial_name(tutorial_name);
		e.setTutorial_desc(tutorial_description);
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		Iterator itr = myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 e.setTutorial_path((String)itr.next());
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");
		
		TutorialDAO d = new TutorialDAO();
		d.insert(e);
		}
		
	}



