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
import dao.CountryDAO;
import dao.StateDAO;
import dao.SubcatDAO;

import vo.CategoryVO;
import vo.CountryVO;
import vo.StateVO;
import vo.SubcatVO;

/**
 * Servlet implementation class CountryController
 */
@WebServlet("/SubcatController")
public class SubcatController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubcatController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.print(flag);
		if(flag.equalsIgnoreCase("insert")){
			insert(request,response);
		}
		else if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		else if(flag!=null && flag.equals("edit"))
		{
			edit(request, response);
			
		}
		 else if (flag != null && flag.equals("delete")) {
				delete(request, response);
			}

		else{
			load(request,response);
		}
	}
		//System.out.println("state");
		public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
			try{
				CategoryDAO d= new CategoryDAO();
				List l=d.load();
				System.out.println(l.size());
				HttpSession session=request.getSession();
				session.setAttribute("catlist", l);
				
				System.out.println("hhhhhhhhh");
				response.sendRedirect("Admin/Subcategory.jsp");
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		public void search(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
		{

			
			SubcatDAO y = new SubcatDAO();
			SubcatVO x = new SubcatVO();
			
			List ls1=new ArrayList();
			ls1=y.search(x);
			
			HttpSession session=request.getSession();
			session.setAttribute("lssearch",ls1);

			response.sendRedirect("Admin/subcat_search.jsp");
			
			System.out.println("search complete");

		}	

		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.print(flag);
		if(flag.equalsIgnoreCase("insert")){
			insert(request,response);
			response.sendRedirect("Admin/Subcategory.jsp");
		}
		else if (flag != null && flag.equals("update")) {
			update(request, response);
		}
		
		else{
			load(request,response);
		}
	}
	public void insert(HttpServletRequest request,HttpServletResponse response)
	{
		String subcat=request.getParameter("SubCat_name");
		String subcatdesc=request.getParameter("subdesc");
		String category=request.getParameter("c_example");
		//String url=request.getParameter("url");
		System.out.println("rrrrrrrrrr");
		
		CategoryVO f= new CategoryVO();
		f.setCategory_id(Long.valueOf(category));
		//System.out.println(f.getCountry_id());
		SubcatVO e = new SubcatVO();
		e.setSubcat_name(subcat);
		e.setSubcat_desc(subcatdesc);
		e.setCategory_id(f);
		//e.setUrl(url);
		
		SubcatDAO d = new SubcatDAO();
		d.insert(e);
		}
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CategoryDAO cc = new CategoryDAO();

		List ls = cc.load();
		System.out.println(ls);


		String subcat_ID = request.getParameter("subcat_id");
	
		//System.out.println(state_ID);
SubcatDAO y = new SubcatDAO();
SubcatVO x = new SubcatVO();
		x.setSubcat_id(Long.valueOf(subcat_ID));
		
		List ls1 = new ArrayList();
		ls1 = y.edit(x);

		HttpSession session = request.getSession();
		session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		response.sendRedirect("Admin/subcategory_edit.jsp");

	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String category = request.getParameter("s_example");

		CategoryVO c = new CategoryVO();
		c.setCategory_id(Long.valueOf(category));
		
		String subcat_ID = request.getParameter("subcat_id");

		String subcat_name = request.getParameter("subcat_name");
		String subcat_desc = request.getParameter("subcat_desc");
		System.out.println("update method is called");
	

		SubcatVO x = new SubcatVO();
		x.setCategory_id(c);
		x.setSubcat_id(Long.valueOf(subcat_ID));
		x.setSubcat_name(subcat_name);
		x.setSubcat_desc(subcat_desc);
		SubcatDAO y = new SubcatDAO();
		y.update(x);

		List ls1=new ArrayList();
		ls1=y.search(x);
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/subcat_search.jsp");
		System.out.println("finish");
	}
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String subcat_ID = request.getParameter("subcat_id");

		System.out.println("delete is called");

		SubcatVO x = new SubcatVO();
		x.setSubcat_id(Long.valueOf(subcat_ID));

		SubcatDAO y = new SubcatDAO();
		y.delete(x);
		
		List ls1=new ArrayList();
		ls1=y.search(x);
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/subcat_search.jsp");
		System.out.println("finish");
	}



		
	
	/*public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			CountryDAO d= new CountryDAO();
			List l=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("clist", l);
			response.sendRedirect("admin/State.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	*/}
