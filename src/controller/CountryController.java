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

import dao.CountryDAO;
import dao.StateDAO;

import vo.CountryVO;
import vo.StateVO;

/**
 * Servlet implementation class CountryController
 */
@WebServlet("/CountryController")
public class CountryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountryController() {
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
		if(flag!=null && flag.equals("search"))
		{
			search(request, response);
			response.sendRedirect("Admin/country_search.jsp");
		}
		else if(flag!=null && flag.equals("edit"))
		{
			edit(request, response);
		}
		else if(flag!=null && flag.equals("delete"))
		{
			delete(request, response);
		}
		System.out.println("country");
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
			response.sendRedirect("Admin/Country.jsp");
		}
		else if(flag!=null && flag.equals("search"))
		{
			search(request, response);
			//response.sendRedirect("Admin/country_search.jsp");
		}
		else if(flag!=null && flag.equals("update"))
		{
			update(request, response);
			response.sendRedirect("Admin/country_search.jsp");
		}
	}
	public void insert(HttpServletRequest request,HttpServletResponse response)
	{
		String s=request.getParameter("Country");
		
		CountryVO e = new CountryVO();
		e.setCountry_name(s);
		
		CountryDAO d = new CountryDAO();
		d.insert(e);
		}
		
	
public void search(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
{

	
	CountryDAO y = new CountryDAO();
	CountryVO x = new CountryVO();
	
	List ls1=new ArrayList();
	ls1=y.search(x);
	
	HttpSession session=request.getSession();
	session.setAttribute("lssearch",ls1);

	
	
	System.out.println("search complete");

}	
public void edit(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	String country_ID = request.getParameter("country_ID");

	long a=Long.parseLong(country_ID);
	System.out.println(country_ID);
	CountryDAO y = new CountryDAO();
	CountryVO x = new CountryVO();
	System.out.println(a);
	x.setCountry_id(a);
	
	List ls1 = new ArrayList();
	ls1 = y.edit(x);

	HttpSession session = request.getSession();
	session.setAttribute("lssearch", ls1);
	response.sendRedirect("Admin/edit_country.jsp");

}

public void update(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	String cat_ID = request.getParameter("c_id");
	System.out.println("dhara"+cat_ID);
	String country_name = request.getParameter("Country");
	//String country_description = request.getParameter("country_description");
	System.out.println("update method is called");


	CountryVO x = new CountryVO();
	x.setCountry_id(Long.valueOf(cat_ID));
	x.setCountry_name(country_name);
	//x.setCountry_description(country_description);
	
	CountryDAO y = new CountryDAO();
	y.update(x);

	List ls1 = new ArrayList();

	ls1 = y.search(x);

	HttpSession session = request.getSession();
	session.setAttribute("lssearch", ls1);
	
	
}

protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession httpSession=request.getSession();

	String cat_ID = request.getParameter("country_ID");
		
	CountryVO x = new CountryVO();
	
	x.setCountry_id(Long.valueOf(cat_ID));
	System.out.println("delete start");
	
	
	CountryDAO y = new CountryDAO();
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



