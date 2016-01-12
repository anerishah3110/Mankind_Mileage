package controller;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;








import dao.ComplaintDAO;
import dao.DonationDAO;
import dao.FeedbackDAO;
import dao.UserMasterDAO;
import vo.ComplaintVO;
import vo.CordbloodStorageVO;
import vo.DonationVO;
import vo.FeedbackVO;
import vo.NormalWithoutSiblingVO;
import vo.UserMasterVO;

/**
 * Servlet implementation class ComplaintController
 */
@WebServlet("/ComplaintController")
public class ComplaintController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplaintController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			
	}

	

	private void insert_complaint(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String comment=request.getParameter("address");
		HttpSession session=request.getSession();
		long id=(long) session.getAttribute("userID");
		
		UserMasterVO v=new UserMasterVO();
		v.setUser_id(id);
		
		ComplaintVO c=new ComplaintVO();
		c.setMessage(comment);
		c.setUser_id(v);
		c.setStatus("pending");
		
		ComplaintDAO d=new ComplaintDAO();
		d.insert(c);
		
	}
	private void insert_feedback(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String comment=request.getParameter("address");
		HttpSession session=request.getSession();
		long id=(long) session.getAttribute("userID");
		
		UserMasterVO v=new UserMasterVO();
		v.setUser_id(id);
		
		FeedbackVO c=new FeedbackVO();
		c.setMessage(comment);
		c.setUser_id(v);
		c.setStatus("pending");
		
		FeedbackDAO d=new FeedbackDAO();
		d.insert(c);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag= request.getParameter("flag");
		System.out.print(flag);
		if(flag.equalsIgnoreCase("insert_complaint")){
			insert_complaint(request,response);
			response.sendRedirect("user/complaint.jsp");
		}
		else if(flag.equalsIgnoreCase("insert_feedback")){
			
			insert_feedback(request,response);
			response.sendRedirect("user/feedback.jsp");
		}
		else if(flag.equalsIgnoreCase("mail")){
			String user_id=request.getParameter("user_id");
			String user_type=request.getParameter("user_type");
			String msg=request.getParameter("complaint");
			UserMasterVO u = new UserMasterVO();
			u.setUser_id(Long.valueOf(user_id));
			UserMasterDAO d1=new UserMasterDAO();
			List ls=new ArrayList();
			if(user_type.equalsIgnoreCase("donor")){
				DonationVO d=new DonationVO();
				d.setUser_id(u);
				
				ls = d1.search2(Long.valueOf(user_id));
				DonationVO d2=(DonationVO) ls.get(0);
				
			sendMail(d2.getEmail_id(),msg);
			}
			else if(user_type.equalsIgnoreCase("cordblood")){
				CordbloodStorageVO d=new CordbloodStorageVO();
				d.setUser_id(u);
				
				ls = d1.search3(Long.valueOf(user_id));
				CordbloodStorageVO d2=(CordbloodStorageVO) ls.get(0);
				
			sendMail(d2.getEmail_id(),msg);
			}
			else if(user_type.equalsIgnoreCase("normal_noSibling")){
				NormalWithoutSiblingVO d=new NormalWithoutSiblingVO();
				d.setUser_id(u);
				
				ls = d1.search1(Long.valueOf(user_id));
				NormalWithoutSiblingVO d2=(NormalWithoutSiblingVO) ls.get(0);
				
			sendMail(d2.getEmail_id(),msg);
			}
			ComplaintDAO cd=new ComplaintDAO();
			cd.update(user_id);
			response.sendRedirect("Admin/complaint_search.jsp");
		}
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
	
}
