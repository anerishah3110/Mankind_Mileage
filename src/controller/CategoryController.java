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

import dao.CategoryDAO;
import dao.SubcatDAO;


import vo.CategoryVO;
import vo.SubcatVO;


/**
 * Servlet implementation class CountryController
 */
@WebServlet("/CategoryController")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryController() {
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

		
		CategoryDAO y = new CategoryDAO();
		CategoryVO x = new CategoryVO();
		
		List ls1=new ArrayList();
		ls1=y.search(x);
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/cat_search.jsp");
		
		System.out.println("search complete");

	}	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"+flag.equalsIgnoreCase("insert"));
		
		if(flag.equalsIgnoreCase("insert")){
			insert(request,response);
			response.sendRedirect("Admin/categories.jsp");
		}
		else if (flag != null && flag.equals("update")) {
			update(request, response);
		}
		
	}
	public void insert(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String s=request.getParameter("Cat_name");
		String s1=request.getParameter("Cat_desc");
		
		System.out.println("hellooooooooooooo"+s);
		CategoryVO e = new CategoryVO();
		e.setCategory_name(s);
		e.setCategory_description(s1);
		
		CategoryDAO d = new CategoryDAO();
		d.insert(e);
		
		
		}
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		/*CategoryDAO cc = new CategoryDAO();

		List ls = cc.load();
		System.out.println(ls);
*/

		String cat_ID = request.getParameter("cat_id");
	
		//System.out.println(state_ID);
CategoryDAO y = new CategoryDAO();
CategoryVO x = new CategoryVO();
		x.setCategory_id(Long.valueOf(cat_ID));
		
		List ls1 = new ArrayList();
		ls1 = y.edit(x);

		HttpSession session = request.getSession();
		//session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		response.sendRedirect("Admin/cat_edit.jsp");

	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cat_ID = request.getParameter("cat_id");
		String category_name = request.getParameter("cat_name");
		String category_description = request.getParameter("cat_desc");
		System.out.println("update method is called");
	

		CategoryVO x = new CategoryVO();
		x.setCategory_id(Long.valueOf(cat_ID));
		x.setCategory_name(category_name);
		x.setCategory_description(category_description);
		
		CategoryDAO y = new CategoryDAO();
		y.update(x);

		List ls1 = new ArrayList();

		ls1 = y.search(x);

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);
		
		response.sendRedirect("Admin/cat_search.jsp");
	}
	 protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession httpSession=request.getSession();
			String cat_ID = request.getParameter("cat_id");

			String category_name = request.getParameter("category_name");
			String category_description = request.getParameter("category_description");
	    		
	    	CategoryVO x = new CategoryVO();
	    	
	    	x.setCategory_id(Long.valueOf(cat_ID));
			x.setCategory_name(category_name);
			x.setCategory_description(category_description);
			System.out.println("delete start");
			
			
	    	CategoryDAO y = new CategoryDAO();
	    	
	    	if(!y.delete(x)){
	    		
	    		httpSession.setAttribute("errorMsg","Please remove child rows first");
	    		
	    	}
	    	else{
	    		//httpSession.invalidate();
	    		httpSession.removeAttribute("errorMsg");
	    	}
			
			List ls1 = new ArrayList();

			ls1 = y.search(x);



			search(request, response);
			System.out.println("deletated");	
		}


	
		
	}


