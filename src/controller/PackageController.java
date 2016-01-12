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

import org.apache.catalina.tribes.group.Response;
import org.apache.coyote.Request;

import vo.PackageVO;
import vo.CategoryVO;
import vo.SubcatVO;
import dao.CategoryDAO;
import dao.SubcatDAO;
import dao.PackageDAO;

/**
 * Servlet implementation class PackageController
 */
@WebServlet("/PackageController")
public class PackageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageController() {
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
		if(flag.equalsIgnoreCase("insert") && flag!=null){
			insert(request,response);
		}
		else if(flag.equalsIgnoreCase("search") && flag!=null){
			search(request,response);
			response.sendRedirect("Admin/p_search.jsp");
		}
		else if(flag.equalsIgnoreCase("edit") && flag!=null){
			edit(request,response);
			response.sendRedirect("Admin/edit_packages.jsp");
		}
		else if(flag.equalsIgnoreCase("delete") && flag!=null){
			delete(request,response);
			response.sendRedirect("Admin/p_search.jsp");
		}
		else if(flag.equalsIgnoreCase("load_pack") && flag!=null){
			load_pack(request,response);
			response.sendRedirect("laboratory/registration.jsp");
		}
		else if(flag.equalsIgnoreCase("load_pack1") && flag!=null){
			load_pack(request,response);
			response.sendRedirect("user/user_package.jsp");
		}
		else{
			load(request,response);
		}
	}
	public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			CategoryDAO d= new CategoryDAO();
			List l=d.load();
			SubcatDAO d1= new SubcatDAO();
			List l1=d1.load();
			//System.out.println(l.size());
			HttpSession session=request.getSession();
			session.setAttribute("catlist", l);
			session.setAttribute("sub_catlist", l1);
			System.out.println("hhhhhhhhh");
			response.sendRedirect("Admin/packages.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void load_pack(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			PackageDAO d= new PackageDAO();
			List l=d.load();
			
			HttpSession session=request.getSession();
			session.setAttribute("packlist", l);
			
			System.out.println("hhhhhhhhh");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		if(flag.equalsIgnoreCase("insert"))
		{
			insert(request,response);
			response.sendRedirect("Admin/packages.jsp");
		}
		else if(flag.equalsIgnoreCase("update") && flag!=null){
			update(request,response);
			response.sendRedirect("Admin/p_search.jsp");
		}
	
		else
		{
			load(request,response);
		}
	}
	public void insert(HttpServletRequest request,HttpServletResponse response)
	{
		String package_name=request.getParameter("package_name");
		String package_description=request.getParameter("package_description");
		String package_type=request.getParameter("package_example");
		int package_duration=Integer.parseInt(request.getParameter("package_duration"));
		int package_price=Integer.parseInt(request.getParameter("package_price"));
		String category=request.getParameter("c_example");
		
		CategoryVO f= new CategoryVO();
		f.setCategory_id(Long.valueOf(category));
		
	
		PackageVO e = new PackageVO();
		e.setPackage_name(package_name);
		e.setPackage_description(package_description);
		e.setPackage_duration(package_duration);
		e.setPackage_price(package_price);
		e.setCategory_id(f);
		e.setPackage_type(package_type);
		
		
		PackageDAO d = new PackageDAO();
		d.insert(e);
		
		}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("dhARAAAAAAAAAA");
		String category = request.getParameter("c_example");
		
		

		CategoryVO c = new CategoryVO();
		c.setCategory_id(Long.valueOf(category));
		
		
		
		String package_ID = request.getParameter("package_id");

		String package_name = request.getParameter("package_name");
		String package_desc = request.getParameter("package_description");
		int package_duration=Integer.parseInt(request.getParameter("package_duration"));
		int package_price=Integer.parseInt(request.getParameter("package_price"));
		String package_type=request.getParameter("package_example");
		
		System.out.println("update method is called");
	

		PackageVO x = new PackageVO();
		x.setCategory_id(c);
		x.setPackage_type(package_type);
		x.setPackage_id(Long.valueOf(package_ID));
		
		x.setPackage_name(package_name);
		x.setPackage_description(package_desc);
		x.setPackage_duration(package_duration);
		x.setPackage_price(package_price);
		
		PackageDAO y = new PackageDAO();
		y.update(x);

		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("searchPackage",ls1);

		/*response.sendRedirect("Admin/subcat_search.jsp");*/
		System.out.println("finish");
	}
	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String package_ID = request.getParameter("d_id");

		System.out.println("delete is called");

		PackageVO x = new PackageVO();
		x.setPackage_id(Long.valueOf(package_ID));

		PackageDAO y = new PackageDAO();
		y.delete(x);
		
		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("searchPackage",ls1);

	
		System.out.println("finish");
	}



	public void search(HttpServletRequest request,HttpServletResponse response){
		List ls=new ArrayList();
		
	
		PackageDAO d1= new PackageDAO();
		ls=d1.search();
		HttpSession session=request.getSession();
		session.setAttribute("searchPackage", ls);
	

	}
	public void edit(HttpServletRequest request,HttpServletResponse response){
		List ls=new ArrayList();
		List ls1=new ArrayList();
		List ls2=new ArrayList();
		CategoryDAO d=new CategoryDAO();
		ls=d.load();
		
		
				
	    String id=request.getParameter("id");
		
		
		/*CategoryVO f= new CategoryVO();
		f.setCategory_id(Long.valueOf(id));
		
		SubcatVO f1= new SubcatVO();
		f1.setSubcat_id(Long.valueOf(id));
		*/
		PackageVO v=new PackageVO();
		v.setPackage_id(Long.valueOf(id));
		
		PackageDAO p= new PackageDAO();
		ls2=p.edit(v);
		
		HttpSession session=request.getSession();
		session.setAttribute("category",ls);
		
		session.setAttribute("package_list",ls2);
		
	}
	
}
