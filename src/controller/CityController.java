package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CityDAO;
import dao.CountryDAO;
import dao.StateDAO;
import vo.CityVO;
import vo.CountryVO;
import vo.StateVO;

/**
 * Servlet implementation class CountryController
 */
@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityController() {
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
			response.sendRedirect("Admin/city.jsp");
		}
		else if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		else if(flag!=null && flag.equals("edit"))
		{
			edit(request, response);
		}
		else if(flag!=null && flag.equals("delete"))
		{
			delete(request, response);
		}
		else if(flag!=null && flag.equals("loadState"))
		{
			load_state(request, response);
						
		}
		else if(flag!=null && flag.equals("loadCity"))
		{
			load_city(request, response);
			response.sendRedirect("Admin/loadCity.jsp");
		}
		else{
			load(request,response);
		}
	}
		//System.out.println("state");
		public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
			try{
				CountryDAO d= new CountryDAO();
				//StateDAO s= new StateDAO();
				List l=d.load();
				//List l1=s.load();
				HttpSession session=request.getSession();
				session.setAttribute("clist", l);
				//session.setAttribute("slist", l1);
				//System.out.println(l);
				System.out.println("hhhhhhhhh");
				response.sendRedirect("Admin/city.jsp");
			}
			catch(Exception e){
				e.printStackTrace();
			}
		}
		public void load_state(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
			String country_id=request.getParameter("countryId");
			//System.out.println("kavisha");
			CountryVO v=new CountryVO();
			v.setCountry_id(Long.valueOf(country_id));
			
			StateVO stateVO=new StateVO();
			stateVO.setCountry_id(v);
			
			StateDAO stateDAO=new StateDAO();
			List ls=stateDAO.load(stateVO);
			System.out.println("state size jj"+ls.size());
			HttpSession session=request.getSession();
			session.setAttribute("slist", ls);
			
			response.sendRedirect("Admin/loadState.jsp");
		}
		
		public void load_city(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
			String state_id=request.getParameter("stateId");
			System.out.println("kavishaaaaaaaaaaaaaaa");
			StateVO v=new StateVO();
			v.setState_id(Long.valueOf(state_id));
			
			CityVO stateVO=new CityVO();
			stateVO.setState_id(v);
			
			CityDAO cityDAO=new CityDAO();
			List ls=cityDAO.load(stateVO);
			
			HttpSession session=request.getSession();
			session.setAttribute("slist", ls);
			
			
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
			response.sendRedirect("Admin/city.jsp");
		}
		else if(flag!=null && flag.equals("search"))
		{
			search(request, response);
		}
		else if(flag!=null && flag.equals("update"))
		{
			update(request, response);
		}
		else{
			load(request,response);
		}
	}
	public void insert(HttpServletRequest request,HttpServletResponse response)
	{
		String city=request.getParameter("City");
		String country=request.getParameter("country_example");
		String state=request.getParameter("state_example");
		
		StateVO a= new StateVO();
		CountryVO b= new CountryVO();
		
		b.setCountry_id(Long.valueOf(country));
		a.setState_id(Long.valueOf(state));
		
		CityVO e = new CityVO();
		e.setCity_name(city);
		e.setCountry_id(b);
		e.setState_id(a);
		
		CityDAO d = new CityDAO();
		d.insert(e);
		
		}
	public void search(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{

		
		CityDAO y = new CityDAO();
		CityVO x = new CityVO();
		
		List ls1=new ArrayList();
		ls1=y.search(x);
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);

		response.sendRedirect("Admin/city_search.jsp");
		
		System.out.println("search complete");

	}	
	
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CountryDAO cc = new CountryDAO();

		StateDAO ss = new StateDAO();

		List ls2 = cc.load();
		System.out.println(ls2);

		//List ls = ss.load();
		

		String city_ID = request.getParameter("City_ID");
		String state_id=request.getParameter("State_ID");

		System.out.println(city_ID);
		CityDAO y = new CityDAO();
		CityVO x = new CityVO();
		x.setCity_id(Long.valueOf(city_ID));
		
		StateVO z=new StateVO();
		z.setState_id(Long.valueOf(state_id));
		
		x.setState_id(z);

		List ls1 = new ArrayList();
		ls1 = y.edit(x);

		HttpSession session = request.getSession();
		session.setAttribute("islist1", ls2);
		//session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		response.sendRedirect("Admin/edit_city.jsp");

	}
	
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String country_ID = request.getParameter("country_example");
		String state_ID = request.getParameter("state_example");

		CountryVO c = new CountryVO();
		c.setCountry_id(Long.valueOf(country_ID));

		StateVO s = new StateVO();
		s.setState_id(Long.valueOf(state_ID));

		String city_ID = request.getParameter("city_id");

		String city_name = request.getParameter("City");
		//String city_description = request.getParameter("city_description");
		System.out.println("update method is called");

		CityVO x = new CityVO();
		x.setCountry_id(c);
		x.setState_id(s);
		x.setCity_id(Long.valueOf(city_ID));
		x.setCity_name(city_name);
		//x.setCity_description(city_description);

		CityDAO y = new CityDAO();
		y.update(x);

		List ls1 = new ArrayList();
		ls1 = y.search(x);

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);

		
		response.sendRedirect("Admin/city_search.jsp");
		System.out.println("finish");
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String city_ID = request.getParameter("City_ID");

		System.out.println("delete method is called");

		CityVO x = new CityVO();
	
		x.setCity_id(Long.valueOf(city_ID));
	
		CityDAO y = new CityDAO();
		y.delete(x);

		List ls1 = new ArrayList();
		ls1 = y.search(x);

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);

		response.sendRedirect("Admin/city_search.jsp");
		System.out.println("finish");
	}
	

		
	
	/*public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			CountryDAO d= new CountryDAO();
			List l=d.load();
			HttpSession session=request.getSession();
			session.setAttribute("clist", l);
			response.sendRedirect("Admin/State.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	*/}
