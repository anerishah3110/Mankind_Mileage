package controller;


import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import vo.CategoryVO;
import vo.CountryVO;
import vo.EventVO;
import vo.LabRegVO;
import vo.PackageVO;
import vo.ReportVO;
import vo.SiblingMapVO;
import vo.UserMasterVO;
import dao.CategoryDAO;
import dao.CountryDAO;
import dao.EventDAO;
import dao.LabRegDAO;
import dao.PackageDAO;
import dao.ReportDAO;
import dao.SiblingMapDAO;
import dao.UserMasterDAO;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.log.SysoCounter;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


/**
 * Servlet implementation class LabController
 */
@WebServlet("/LabController")
public class LabController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LabController() {
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
			search_sibling(request, response);
			response.sendRedirect("laboratory/withSiblingSearch.jsp");
		}
		 else if(flag!=null && flag.equals("search1"))
			{
				search(request, response);
				response.sendRedirect("laboratory/withoutSiblingSearch.jsp");
			}
		 else if(flag!=null && flag.equals("report"))
			{
				report(request, response);
			//	response.sendRedirect("laboratory/Profilenew.jsp");
			}
		
		 else if(flag!=null && flag.equals("load"))
			{
				load(request, response);
				response.sendRedirect("laboratory/HLA_report.jsp");
			}
		 else if(flag!=null && flag.equals("edit"))
			{
			 String ID = request.getParameter("Kid");
				edit(request, response);
				response.sendRedirect("laboratory/edit_registration.jsp?id="+ID);
			}
		 
		 else if(flag!=null && flag.equals("update"))
			{
				update(request, response);
				response.sendRedirect("laboratory/withSiblingSearch.jsp");
			}
		
	}

		private void report(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
			long value=0;
			HttpSession session=request.getSession();
			String user_id=session.getAttribute("userID").toString();
			System.out.println(user_id);
			LabRegDAO n=new LabRegDAO();
			//String userID=null;
			List ls=n.search_p(user_id);
			SiblingMapDAO s=new SiblingMapDAO();
			List ls1=s.search_p(user_id);
			int i=0;
			int j=0;
			if(!ls1.isEmpty()){
			
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
			for(int a=0;a<object.length;a++)
			{
				for(int y=0;y<object1.length;y++)
				{
					if(!object[a].equals(object1[y]))
					{
						value=object[a];
					}
				}
			}
			}
			else{
				value=(long) ls.get(0);
				System.out.println("valueeeee"+value);
			}
			ReportDAO u=new ReportDAO();
			List l=u.search_p(value);
			System.out.println("sizeeeeeeeeeeeeeeeee"+l.size());
			ReportVO v=  (ReportVO) l.get(0);
			
		/*	long report_no=(long) l.get(1);
			String a=(String) l.get(2);
			String b=(String) l.get(3);
			String dr=(String) l.get(4);
			ReportVO v=new ReportVO();
			v.setReport_no(report_no);
			v.setA(a);
			v.setB(b);
			v.setDr(dr);
			
			
			LabRegVO m=new LabRegVO();
			m.setS_id(value);
			v.setS_id(m);
*/			pdfGeneration(v,request,response);
	}

		private void search_sibling(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		LabRegDAO y = new LabRegDAO();
		
		
		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);
				
		System.out.println("search complete");
		SiblingMapDAO s=new SiblingMapDAO();
		List ls2=new ArrayList();
		ls2=s.search();
		session.setAttribute("map",ls2);
		
	}
	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String U_ID = request.getParameter("U_Id");
		String S_ID = request.getParameter("S_Id");
		String id = request.getParameter("Id");
		String uid=request.getParameter("uid");
		String name=request.getParameter("name");
		String pack=request.getParameter("package_example");
		String cno=request.getParameter("c_no");
		String email=request.getParameter("Email_id");
		LabRegVO x=new LabRegVO();
		x.setS_id(Long.valueOf(S_ID));
		x.setU_id(Long.valueOf(uid));
		x.setName(name);
		//x.setPackage_id(Long.valueOf(pack));
		x.setContact_no(cno);
		x.setEmail(email);
		PackageVO v=new PackageVO();
		v.setPackage_id(Long.valueOf(pack));
		x.setPackage_id(v);
		LabRegDAO d1=new LabRegDAO();
		d1.update(x);
		if(U_ID.equalsIgnoreCase(uid)){
			
		}
		else{
			SiblingMapVO x2=new SiblingMapVO();
			x2.setId(Long.valueOf(id));
			UserMasterVO u=new UserMasterVO();
			u.setUser_id(Long.valueOf(uid));
			
			x2.setU_id(u);
			x2.setS_id(x);
			SiblingMapDAO d2=new SiblingMapDAO();
			d2.update(x2);
			
		}
		SiblingMapDAO d2=new SiblingMapDAO();
		List ls2=d2.search();
		List ls1 = new ArrayList();

		ls1 = d1.search();

		HttpSession session = request.getSession();
		session.setAttribute("lssearch", ls1);
		session.setAttribute("map", ls2);
		
		
	}

	
	private void search(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		LabRegDAO y = new LabRegDAO();
		
		
		List ls1=new ArrayList();
		ls1=y.search();
		
		HttpSession session=request.getSession();
		session.setAttribute("lssearch",ls1);
		System.out.println("search complete"+ls1.size());
		System.out.println("search complete");
		SiblingMapDAO s=new SiblingMapDAO();
		List ls2=new ArrayList();
		ls2=s.search();
		System.out.println("search complete"+ls2.size());
		session.setAttribute("map",ls2);
	
		
	}
	public void load(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		try{
			
			  Random r = new Random();
			  
			  int Low = 1000;
			  int High = 65536;
			  int R = r.nextInt(High-Low) + Low;
				HttpSession session=request.getSession();
			session.setAttribute("random1", R);
			System.out.println("hhhhhhhhh");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
		String S_ID = request.getParameter("Sid");
		
		//System.out.println(state_ID);
		LabRegDAO y = new LabRegDAO();
		LabRegVO x = new LabRegVO();
				x.setS_id(Long.valueOf(S_ID));
		
		List ls1 = new ArrayList();
		ls1 = y.edit(x);
		PackageDAO p=new PackageDAO();
		List ls2=p.load();
		HttpSession session = request.getSession();
		//session.setAttribute("islist", ls);
		session.setAttribute("lssearch", ls1);
		session.setAttribute("packlist", ls2);
		

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		 if(flag!=null && flag.equals("insert"))
		{
			insert(request, response);
			
			
		}
		 else if(flag!=null && flag.equals("report_insert"))
			{
				report_insert(request, response);
				
			}
		 else if(flag!=null && flag.equals("update"))
			{
				update(request, response);
				response.sendRedirect("laboratory/withSiblingSearch.jsp");
			}
	}

	

	public void insert(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String uid=request.getParameter("uid");
		UserMasterDAO u1=new UserMasterDAO();
		List l=u1.search_user_id();
		System.out.println(l.contains(Long.valueOf(uid))+uid);
		if(l.contains(Long.valueOf(uid)))
		{
				
		String name=request.getParameter("name");
		String pack=request.getParameter("package_example");
		String cno=request.getParameter("c_no");
		String email=request.getParameter("Email_id");
		String result=request.getParameter("r1");
		System.out.println(result+"resulttttttttttt");
		UserMasterVO u=new UserMasterVO();
		u.setUser_id(Long.valueOf(uid));
		//System.out.println("hellooooooooooooo"+s);
		LabRegVO e = new LabRegVO();
		e.setU_id(Long.valueOf(uid));
		e.setName(name);
		PackageVO p=new PackageVO();
		p.setPackage_id(Long.valueOf(pack));
		e.setPackage_id(p);
		e.setContact_no(cno);
		e.setEmail(email);
		LabRegDAO d = new LabRegDAO();
		d.insert(e);
		
		if(result.equalsIgnoreCase("yes")){
			/*long sid=e.getId();
			e.setId(sid);*/
		SiblingMapVO s=new SiblingMapVO();
		s.setS_id(e);
		s.setU_id(u);
		SiblingMapDAO d1=new SiblingMapDAO();
		d1.insert(s);
		}
		response.sendRedirect("laboratory/registration.jsp");
	}
	else
	{
		
		response.sendRedirect("laboratory/registration.jsp?flag=no");
	}
}
	public void report_insert(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		String uid=request.getParameter("uid");
		ReportDAO r1=new ReportDAO();
		List re=r1.search_p(Long.valueOf(uid));
		if(re.isEmpty())
		{
		
		String r_no=request.getParameter("r_no");
		String a=request.getParameter("a");
		String b=request.getParameter("b");
		String dr=request.getParameter("dr");
		String a2=request.getParameter("a2");
		String b2=request.getParameter("b2");
		String dr2=request.getParameter("dr2");
		
		System.out.println("uuuuuuuuuuuuuuuuuu"+uid);
		
		LabRegVO u=new LabRegVO();
		u.setS_id(Long.parseLong(uid));
		
		ReportDAO r=new ReportDAO();
		//List ls=r.search_p(u);
		/*String s=(String) ls.get(2);*/
		String object=null;
		/*System.out.println("llssssssssssssize"+ls.size());
		for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
			object = (String) iterator.next();
			System.out.println("lllllllllllllllllllll"+object);
		}
		HttpSession session = request.getSession();
		session.setAttribute("islist", object);*/
		
		
			
		
		//System.out.println("hellooooooooooooo"+s);
		ReportVO e = new ReportVO();
		e.setReport_no(Long.parseLong(r_no));
		e.setA1(a);
		e.setA2(a2);
		e.setB1(b);
		e.setB2(b2);
		e.setDr1(dr);
		e.setDr2(dr2);
		e.setS_id(u);
		
		
		ReportDAO d = new ReportDAO();
		d.insert(e);
		
	//	pdfGeneration(e,request,response);
		response.sendRedirect("laboratory/HLA_report.jsp");
		}
		else
		{
			response.sendRedirect("laboratory/HLA_report.jsp?flag=no");
		}
		}

	private void pdfGeneration(ReportVO e,HttpServletRequest request,HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println(e.getReport_no());
		System.out.println(e.getS_id().getName());
		HttpSession session = request.getSession();
		String name=(String) session.getAttribute("islist");
		
		final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
		
		/*String FILE = "formatedPositionPdf1.pdf";*/

		Font catFont = new Font(Font.FontFamily.TIMES_ROMAN, 18,
				Font.BOLD);

		Font catFont1 = new Font(Font.FontFamily.TIMES_ROMAN, 18,
				Font.UNDERLINE);

		Font subcatFont = new Font(Font.FontFamily.TIMES_ROMAN, 14,
				Font.BOLD);

		Font redFont = new Font(Font.FontFamily.TIMES_ROMAN, 12,
				Font.NORMAL, BaseColor.RED);
		Font subFont = new Font(Font.FontFamily.TIMES_ROMAN, 12,
				Font.BOLD);
		Font smallBold = new Font(Font.FontFamily.TIMES_ROMAN, 12,
				Font.BOLD);


	    

		
		
			
			try {
				/*String filePath = getServletContext().getRealPath(request.getServletPath());
				int path = filePath.lastIndexOf('\\');
				String path1= filePath.substring(0, path) +"\\doc\\";
				*/
				
				Document document = new Document();

				ByteArrayOutputStream ba = new ByteArrayOutputStream (); 
				PdfWriter writer = PdfWriter.getInstance (document, ba); 

				//PdfWriter.getInstance(document, new FileOutputStream(path1+"/"+FILE));
				PdfWriter.getInstance(document, new FileOutputStream("C:/Temp/abc.pdf"));
				document.open();
				
				// Left
				
				Paragraph paragraph = new Paragraph("Mankind Mileage", catFont);
				paragraph.setAlignment(Element.ALIGN_CENTER);

				// paragraph.setAlignment(Element.ALIGN_RIGHT);
				document.add(paragraph);
				// Centered
				
				
				paragraph = new Paragraph("Report", subcatFont);
				paragraph.setAlignment(Element.ALIGN_CENTER);
				//addEmptyLine(paragraph, 2);
				
				document.add(paragraph);
				
				
				
				/*paragraph = new Paragraph("Salary Pay Slip", catFont1);
				//addEmptyLine(paragraph, 3);
				paragraph.setAlignment(Element.ALIGN_CENTER);
				document.add(paragraph);*/
				
				paragraph = new Paragraph("Report Number			:"+e.getReport_no(), subFont);
				paragraph.setAlignment(Element.ALIGN_LEFT);
				document.add(paragraph);

				paragraph = new Paragraph("Name		:"+e.getS_id().getName(), subFont);
				paragraph.setAlignment(Element.ALIGN_LEFT);
				document.add(paragraph);
				
				//addEmptyLine(paragraph, 2);
				
			//	document.add(paragraph);

				paragraph = new Paragraph();
				// add a table
				PdfPTable table = new PdfPTable(3);

				// t.setBorderColor(BaseColor.GRAY);
				// t.setPadding(4);
				// t.setSpacing(4);

				// t.setBorderWidth(1);

				PdfPCell c1 = new PdfPCell(new Phrase("Locai "));
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(c1);

				c1 = new PdfPCell(new Phrase("Value1"));
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(c1);

				c1 = new PdfPCell(new Phrase("Value2"));
				c1.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(c1);
				
				table.addCell("A");
				
			
				table.addCell(e.getA1());
				table.addCell(e.getA2());
				
				
				
				
			
				
				table.addCell("B");
				table.addCell(e.getB1());
				table.addCell(e.getB2());
				table.addCell("DR");
				table.addCell(e.getDr1());
				table.addCell(e.getDr2());
				
				paragraph.add(table);



				// now add all this to the document
				document.add(paragraph);
				document.close();

								
				response.setContentType ( "application / pdf"); 

				response.setContentLength (ba.size ()); 

				ServletOutputStream out = response.getOutputStream (); 

				ba.writeTo (out); 

				out.flush (); 

			} catch (Exception er) {
				er.printStackTrace();
			}

		
	}
		
		
	
}
