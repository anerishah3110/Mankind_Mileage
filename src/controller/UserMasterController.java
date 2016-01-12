package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.CityVO;
import vo.CordbloodStorageVO;
import vo.CountryVO;
import vo.DonationVO;
import vo.LabRegVO;
import vo.PackagePurchaseVO;
import vo.PackageVO;
import vo.ReimbursementVO;
import vo.NormalWithoutSiblingVO;
import vo.ReportVO;
import vo.StateVO;
import vo.UserMasterVO;
import dao.CityDAO;
import dao.CordbloodStorageDAO;
import dao.DonationDAO;
import dao.LabRegDAO;
import dao.PackageDAO;
import dao.PackagePurchaseDAO;
import dao.ReimbursementDAO;
import dao.ReportDAO;
import dao.SiblingMapDAO;
import dao.UserMasterDAO;
import dao.NormalWithoutSiblingDAO;

/**
 * Servlet implementation class UserMasterController
 */
@WebServlet("/UserMasterController")
public class UserMasterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserMasterController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");

		if (flag.equalsIgnoreCase("search_nwos")) {
			search_nwos(request, response);
			// response.sendRedirect("Admin/withoutSiblingNormalUser_search.jsp");
		}
		/*
		 * else if(flag.equalsIgnoreCase("search_nws")){
		 * search_nws(request,response);
		 * response.sendRedirect("user/withSiblingNormalUser_search.jsp"); }
		 */
		else if (flag.equalsIgnoreCase("search_doner")) {
			search_doner(request, response);
			response.sendRedirect("Admin/donationUser_search.jsp");
		} else if (flag.equalsIgnoreCase("search1")) {
			search1(request, response);
			response.sendRedirect("user/profile.jsp");
		} else if (flag.equalsIgnoreCase("search_cord")) {
			search_cord(request, response);

		}
		else if (flag.equalsIgnoreCase("pattern_matching")) {
			pattern_matching(request, response);
			

		}

	}

	private void pattern_matching(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String user_id=session.getAttribute("userID").toString();
		
		LabRegDAO d=new LabRegDAO();
		List ls=d.search_p(user_id);
		long s_id=(long) ls.get(0);
		int i=0;
		int j=0;
		if(ls.size()==1){
			ReportDAO r=new ReportDAO();
			List report=r.search_p(s_id);
			ReportVO v=(ReportVO)report.get(0);
			List result=r.search_report(v);
			session.setAttribute("report_count", result);
			response.sendRedirect("user/pattern_matching_database.jsp");
		}
		else{
			SiblingMapDAO s=new SiblingMapDAO();
			List ls1=s.search_p(user_id);
			
			
			
			Long object[] = new Long[ls.size()];
			for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
				
				object[i] =  (Long) iterator.next();
				System.out.println("lllllllllllllllllllll"+object[i]);
				i++;
				
			}
			Long object1[]= new Long[ls1.size()];
			
			for (Iterator iterator = ls1.iterator(); iterator.hasNext();) {
				
				object1[j] = (Long) iterator.next();
				System.out.println("lllllllllllllllllllll"+object1[j]);
				j++;
			}
			long value=0;
			for(int i1=0;i1<object.length;i1++)
			{
				for(int y=0;y<object1.length;y++)
				{
					if(!object[i1].equals(object1[y]))
					{
						 value=object[i1];
						 System.out.println("valuee"+value);
						 
					}
				}
			}
			
			ReportDAO r=new ReportDAO();
			List report=r.search_p(value);
			ReportVO v=(ReportVO)report.get(0);
			List result=r.search_sib_report(v);
			session.setAttribute("report_count", result);
			response.sendRedirect("user/pattern_matching.jsp");
		}
		
	}

	private void search1(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		long id = (long) session.getAttribute("userID");
		String type = (String) session.getAttribute("type");
		UserMasterDAO x = new UserMasterDAO();
		List ls1 = new ArrayList();
		if (type.equalsIgnoreCase("normal_noSibling")) {

			ls1 = x.search1(id);
			System.out.println("sizeeeeeeeeee" + ls1.size());

		} else if (type.equalsIgnoreCase("donor")) {

			ls1 = x.search2(id);
			System.out.println("sizeeeeeeeeee" + ls1.size());

		} else if (type.equalsIgnoreCase("cordblood")) {

			ls1 = x.search3(id);
			System.out.println("sizeeeeeeeeee" + ls1.size());

		}
		session.setAttribute("search", ls1);
	}

	public void search_nwos(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		UserMasterDAO x = new UserMasterDAO();

		List ls1 = new ArrayList();
		ls1 = x.search();

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);
		NormalWithoutSiblingDAO y = new NormalWithoutSiblingDAO();
		List ls2 = new ArrayList();
		ls2 = y.search();
		session.setAttribute("lslist", ls2);

		response.sendRedirect("Admin/withoutSiblingNormalUser_search.jsp");

		System.out.println("search complete");

	}

	public void search_cord(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		UserMasterDAO x = new UserMasterDAO();

		List ls1 = new ArrayList();
		ls1 = x.search();

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);
		CordbloodStorageDAO y = new CordbloodStorageDAO();
		List ls2 = new ArrayList();
		ls2 = y.search();
		session.setAttribute("lslist", ls2);

		response.sendRedirect("Admin/cordBloodStorageUser_search.jsp");

		System.out.println("search complete");

	}

	public void search_doner(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		UserMasterDAO x = new UserMasterDAO();

		List ls1 = new ArrayList();
		ls1 = x.search();

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);
		DonationDAO y = new DonationDAO();
		List ls2 = new ArrayList();
		ls2 = y.search();
		session.setAttribute("lslist", ls2);

		System.out.println("search complete");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if (flag.equalsIgnoreCase("insert")) {
			insert(request, response);
			response.sendRedirect("user/normal_user_withoutSibling.jsp");
		} else if (flag.equalsIgnoreCase("insertcord")) {
			insertcord(request, response);
			response.sendRedirect("user/cordBloodStorageRegistration.jsp");

		} else if (flag.equalsIgnoreCase("insert_donor")) {
			insert_donor(request, response);
			response.sendRedirect("user/donation_form.jsp");
		} else if (flag.equalsIgnoreCase("update")) {
			update(request, response);
			response.sendRedirect("user/profile.jsp");
		}
		else if(flag.equalsIgnoreCase("reimbursement_insert")){
			insert_reimbursement(request,response);
			response.sendRedirect("user/Profilenew.jsp");
		}
		else if(flag.equalsIgnoreCase("continue")){
			HttpSession session=request.getSession();
			String s=(String) session.getAttribute("type");
			if(s==null)
			{
				response.sendRedirect("user/RegisterNow.jsp");
			}
			else
			{
				String user_id= session.getAttribute("userID").toString();
				//Date dt = new Date();
				//System.out.println("date"+dt.toString());
				java.util.Date date = Calendar.getInstance().getTime();
				String package_id=request.getParameter("package_id");
				System.out.println("pppp"+package_id);
				UserMasterVO u1=new UserMasterVO();
				u1.setUser_id(Long.valueOf(user_id));
				
				PackageVO d=new PackageVO();
				d.setPackage_id(Long.valueOf(package_id));
				
				PackagePurchaseVO v=new PackagePurchaseVO();
				v.setUser_id(u1);
				v.setPackage_id(d);
				v.setDate(date.toString());
				
				PackagePurchaseDAO d1=new PackagePurchaseDAO();
				d1.insert(v);
				
				String price=request.getParameter("price");
				response.sendRedirect("user/buy_now.jsp?package_price="+price);
			}
		}
		else if(flag.equalsIgnoreCase("forgot_password")){
			String uid=request.getParameter("uid");
			String email=request.getParameter("email");
			UserMasterDAO d=new UserMasterDAO();
			List ls=d.search_type(uid);
			if(!ls.isEmpty())
			{
			Object[] u=(Object[]) ls.get(0);
			String password=u[1].toString();
			String type=u[0].toString();
			System.out.println("iiiiiiiiiiii"+password);
			String mail=null;
			/*UserMasterVO v1=new UserMasterVO();
			v1.setUser_id(Long.valueOf(uid));*/
			
			if(type.equalsIgnoreCase("donor"))
			{
				DonationDAO v=new DonationDAO();
				List l1=v.search_p(uid);
				mail=(String) l1.get(0);
				
			}
			else if(type.equalsIgnoreCase("normal_noSibling"))
			{
				NormalWithoutSiblingDAO v=new NormalWithoutSiblingDAO();
				List l1=v.search_p(uid);
				mail=(String) l1.get(0);
				
			}
			else if(type.equalsIgnoreCase("cordblood"))
			{
				CordbloodStorageDAO v=new CordbloodStorageDAO();
				List l1=v.search_p(uid);
				mail=(String) l1.get(0);
				
			}
			if(email.equals(mail))
			{
				String msg="Your Password is"+password;
				sendMail(email, msg);
			}
			response.sendRedirect("login.jsp");
			}
			else
			{
				response.sendRedirect("Admin/forgot_password.jsp");
			}
		}

	}
	private void insert_reimbursement(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		long id=(long) session.getAttribute("userID");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String relation=request.getParameter("relation");
		String email=request.getParameter("email");
		String phnno=request.getParameter("phnno");
		UserMasterVO u=new UserMasterVO();
		u.setUser_id(id);
		
		ReimbursementVO v=new ReimbursementVO();
		v.setName(name);
		v.setAddress(address);
		v.setRelation(relation);
		v.setEmail(email);
		v.setContact_no(phnno);
		v.setUser_id(u);
		
		ReimbursementDAO v1=new ReimbursementDAO();
		v1.insert(v);
		
		UserMasterDAO d=new UserMasterDAO();
		d.update(id);
	}


	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		long id = (long) session.getAttribute("userID");
		String type = (String) session.getAttribute("type");
		/*
		 * String uid=request.getParameter("l1"); String
		 * uname=request.getParameter("l2")
		 */;
		String uaddr = request.getParameter("l3");
		String ucno = request.getParameter("l4");
		String uemail = request.getParameter("l5");
		UserMasterDAO x = new UserMasterDAO();
		List ls1 = new ArrayList();

		if (type.equalsIgnoreCase("normal_noSibling")) {
			NormalWithoutSiblingDAO n = new NormalWithoutSiblingDAO();
			n.update(uaddr, ucno, uemail, id);
			ls1 = x.search1(id);

		}
		else if (type.equalsIgnoreCase("donor")) {
			DonationDAO n = new DonationDAO();
			n.update(uaddr, ucno, uemail, id);
			ls1 = x.search2(id);

		}
		else if (type.equalsIgnoreCase("cordblood")) {
			CordbloodStorageDAO n = new CordbloodStorageDAO();
			n.update(uaddr, ucno, uemail, id);
			ls1 = x.search3(id);

		}

		System.out.println("sizeeeeeeeeee" + ls1.size());
		session.setAttribute("search", ls1);
	}

	public void insertcord(HttpServletRequest request,
			HttpServletResponse response) {
		String user_name = request.getParameter("username");
		String user_password = request.getParameter("password");
		String user_status = request.getParameter("status");
		String user_type = request.getParameter("type");
		String address = request.getParameter("address");
		String country = request.getParameter("country_example");
		String state = request.getParameter("state_example");
		String city = request.getParameter("city_example");
		String emailid = request.getParameter("email");
		String contactno = request.getParameter("phnno");
		String duedate = request.getParameter("duedate");
		String hname = request.getParameter("hname");
		String haddress = request.getParameter("haddress");
		String docname = request.getParameter("docname");
		String t = request.getParameter("t");

		System.out.println("ncjhsnbcjhbdsjbcjds : " + Long.valueOf(country)
				+ Long.valueOf(state) + Long.valueOf(city));
		UserMasterVO a = new UserMasterVO();
		a.setUser_name(user_name);
		a.setUser_password(user_password);
		a.setUser_status(user_status);
		a.setUser_type(user_type);
		a.setType(t);

		UserMasterDAO d = new UserMasterDAO();
		d.insert(a);

		CordbloodStorageVO b = new CordbloodStorageVO();
		b.setAddress(address);
		CountryVO c = new CountryVO();
		StateVO s = new StateVO();
		CityVO ci = new CityVO();

		c.setCountry_id(Long.valueOf(country));
		s.setState_id(Long.valueOf(state));
		ci.setCity_id(Long.valueOf(city));

		b.setEmail_id(emailid);
		b.setContact_no(contactno);
		b.setUser_id(a);
		b.setDuedate(duedate);
		b.setDocname(docname);
		b.setHospital_name(hname);
		b.setHospital_address(haddress);

		b.setCountry_id(c);
		b.setState_id(s);
		b.setCity_id(ci);

		CordbloodStorageDAO e = new CordbloodStorageDAO();
		e.insert(b);
		List ls=d.search_id();
		long v= (long) ls.get(0);
		System.out.println(v+"idddddddddddd");
		//long id=v.getUser_id();
		String msg="Your Unique_ID is:"+v;
		sendMail(emailid,msg);

	}

	public void insert(HttpServletRequest request, HttpServletResponse response) {
		String user_name = request.getParameter("username");
		String user_password = request.getParameter("password");
		String user_status = request.getParameter("status");
		String user_type = request.getParameter("type");
		String address = request.getParameter("address");
		String country = request.getParameter("country_example");
		String state = request.getParameter("state_example");
		String city = request.getParameter("city_example");
		String emailid = request.getParameter("email");
		String contactno = request.getParameter("phnno");
		String t = request.getParameter("t");
		System.out.println(t);

		UserMasterVO a = new UserMasterVO();
		a.setUser_name(user_name);
		a.setUser_password(user_password);
		a.setUser_status(user_status);
		a.setUser_type(user_type);
		a.setType(t);

		UserMasterDAO d = new UserMasterDAO();
		d.insert(a);

		NormalWithoutSiblingVO b = new NormalWithoutSiblingVO();
		CountryVO c = new CountryVO();
		StateVO s = new StateVO();
		CityVO ci = new CityVO();
		b.setAddress(address);
		c.setCountry_id(Long.valueOf(country));
		s.setState_id(Long.valueOf(state));
		ci.setCity_id(Long.valueOf(city));
		b.setCountry_id(c);
		b.setState_id(s);
		b.setCity_id(ci);
		b.setEmail_id(emailid);
		b.setContact_no(contactno);
		b.setUser_id(a);

		NormalWithoutSiblingDAO e = new NormalWithoutSiblingDAO();
		e.insert(b);
		List ls=d.search_id();
		long v= (long) ls.get(0);
		System.out.println(v+"idddddddddddd");
		//long id=v.getUser_id();
		String msg="Your Unique_ID is:"+v;
		sendMail(emailid,msg);
	}
	
protected void sendMail(String email,String msg){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        
        
 
         try {
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent("<h1>Below is your message<br></h1>  "+msg
            		
            		+ ""
            		+ "","text/html" );
            message.setSubject(msg);
            
            InternetAddress sender = new InternetAddress("anerishah3110@gmail.com", "Admin");
             InternetAddress receiver = new InternetAddress(email);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "anerishah3110@gmail.com", "anuannyshah");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                      
        } catch (Exception e) {
            System.out.println("err = " + e);
         }
		
		
		
	}


	public void insert_donor(HttpServletRequest request,
			HttpServletResponse response) {
		String user_name = request.getParameter("username");
		String user_password = request.getParameter("password");
		String user_status = request.getParameter("status");
		String user_type = request.getParameter("type");
		String address = request.getParameter("address");
		String country = request.getParameter("country_example");
		String state = request.getParameter("state_example");
		String city = request.getParameter("city_example");
		String emailid = request.getParameter("email");
		String contactno = request.getParameter("phnno");
		String date = request.getParameter("duedate");
		String hname = request.getParameter("hname");
		String haddress = request.getParameter("haddress");
		String docname = request.getParameter("docname");
		String t = request.getParameter("t");

		System.out.println("ncjhsnbcjhbdsjbcjds : " + Long.valueOf(country)
				+ Long.valueOf(state) + Long.valueOf(city));
		UserMasterVO a = new UserMasterVO();
		a.setUser_name(user_name);
		a.setUser_password(user_password);
		a.setUser_status(user_status);
		a.setUser_type(user_type);
		a.setType(t);

		UserMasterDAO d = new UserMasterDAO();
		d.insert(a);

		DonationVO b = new DonationVO();

		CountryVO c = new CountryVO();
		StateVO s = new StateVO();
		CityVO ci = new CityVO();

		c.setCountry_id(Long.valueOf(country));
		System.out.println(c.getCountry_id() + "ccccccccccidddddddddd");
		s.setState_id(Long.valueOf(state));
		ci.setCity_id(Long.valueOf(city));

		b.setAddress(address);
		b.setEmail_id(emailid);
		b.setContact_no(contactno);
		b.setDuedate(date);
		b.setHospital_name(hname);
		b.setHospital_addr(haddress);
		b.setDoc_name(docname);
		b.setUser_id(a);
		b.setCity_id(ci);
		b.setCountry_id(c);
		b.setState_id(s);

		DonationDAO e = new DonationDAO();
		e.insert(b);
		List ls=d.search_id();
		long v= (long) ls.get(0);
		System.out.println(v+"idddddddddddd");
		//long id=v.getUser_id();
		String msg="Your Unique_ID is:"+v;
		sendMail(emailid,msg);
	}

}
