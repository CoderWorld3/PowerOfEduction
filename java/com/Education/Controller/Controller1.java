package com.Education.Controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Random;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.Education.Client.Login;
import com.Education.Client.Registration;
import com.Education.DaoImpl.DataBaseImpl;
import com.Education.DaoImpl.EmailImpl;
import com.Education.Exception.UserNotfound;

@Controller
@SessionAttributes({ "mail", "registrationData" ,"St_image"})

public class Controller1 {
	@Autowired
	private EmailImpl emailImpl;
	@Autowired
	private DataBaseImpl baseImpl;

	byte[] file=null;
	Random random = new Random();
	int otp = 0;

	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	@RequestMapping("/powerOfEducation")
	public String powerOfEducation() {
		return "PowerOfEducation";
	}


	@RequestMapping("/login")
	public String login(@ModelAttribute("loginData") Login login) {

		return "login";
	}
	@GetMapping("/imageUpload")
      public String imageUpload() {
    	  return "imageUpload";
      }
	
	@RequestMapping("/registrationData")
	public String registration(@Valid @ModelAttribute("regData") Registration registration, BindingResult result,
			Model model) {
		
		 
		model.addAttribute("registrationData", registration);
		String image=(String) model.getAttribute("St_image");
		model.addAttribute("image",image);
	     
		
		model.addAttribute("mail", registration.getEmail());
		if (result.hasErrors()) {
			return "registration";
		} else
			return "emailConfirm";

	}

	@RequestMapping(value = "/registrationImage",method = RequestMethod.POST)
	public String EmailConfirm(@RequestParam("profile") CommonsMultipartFile pri,Model model,HttpSession httpSession) {
		model.addAttribute("St_image",pri.getOriginalFilename());
//		System.out.println(pri.getSize());
//		System.out.println(pri.getContentType());
//		System.out.println(pri.getName());
//		System.out.println(pri.getOriginalFilename());
//		byte[] file=pri.getBytes();
//		/Users/arvinmishra/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PowerOfEducation/WEB-INF/uploadsImage
		String path= httpSession.getServletContext().getRealPath("/")+"resource"+File.separator+"images"+File.separator+pri.getOriginalFilename();
		
       
         
        File out = new File(path);
        FileOutputStream fos = null;

        try {
            fos = new FileOutputStream(out);

            // Writes bytes from the specified byte array to this file output stream 
            fos.write(pri.getBytes());
            System.out.println("Upload and writing output file ok");
        } catch (FileNotFoundException e) {
            System.out.println("File not found" + e);
        } catch (IOException ioe) {
            System.out.println("Exception while writing file " + ioe);
        } finally {
            // close the streams using close method
            try {
                if (fos != null) {
                    fos.close();
                }
            } catch (IOException ioe) {
                System.out.println("Error while closing stream: " + ioe);
            }
        }
		return "emailConfirm";
	}

	@RequestMapping(value="/sendEmail",method=RequestMethod.POST)

	public String sendEmail(Model model) throws MessagingException {

		otp = 6 * (random.nextInt(1000000));
		String email = (String) model.getAttribute("mail");
		emailImpl.sendEmail(email, otp, "<br>Welcome to us");

	
	    	
	
		return "validateEmail";
	}
	@RequestMapping(value="/sendEmailToUs",method=RequestMethod.POST)

	public String sendEmailToContact(@RequestParam("userName") String name,
			@RequestParam("email")String email,@RequestParam("city") String city, Model
			model , HttpSession session) throws MessagingException {
		session.setAttribute("session", name);
		String name1="";
	
	if(name!= name1) {
		 String n=(String)session.getAttribute("session");
		emailImpl.sendEmailToUs(email, name,city ,"<br>Welcome to us <br/> We content with you very Soon");
	  name1=n;
	
	}
	else { 
		throw  new UserNotfound(city, name);
	
		
	}

	model.addAttribute("messageFromServer", "Check your email");
	return "home";
	}
	
	
	@RequestMapping(value="/sendEmailToUs1",method=RequestMethod.POST)
	public String mailSendToUs1(@RequestParam("email")String email,String text) throws MessagingException {
emailImpl.sendEmailToUs1(email,"Thanku ");
		
		return "home";
	}
	@RequestMapping(value="/otpChecker",method=RequestMethod.POST)
	public String otp(Model model, @RequestParam("otp") int otp1) {
		Object registration = (Registration) model.getAttribute("registrationData");
		String image=(String) model.getAttribute("St_image");
		   
    	
		
		
		System.out.println(registration);
		if (otp == otp1) {
			int i = baseImpl.insertRegistrationData((Registration) registration,image);

			System.out.println(i + "your Data Insert into DAtaBAse");
			return "home";
		} else
			return "emailConfirm";

	}
	@RequestMapping("/navigation")
	public String navigation( Authentication auth,Principal pri, Model model) {
	 var a	=auth.getAuthorities();
	  var b=auth.getPrincipal();
		
	  var name=pri.getName();
	  model.addAttribute("a",a);
	  model.addAttribute("b",b);
	  model.addAttribute("Username",name);
	 
		
		 
		return "navigation";

	}

	@GetMapping("/Contact")
	public String contact() {
		return "Contact";
	}
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		 StringTrimmerEditor editor = new StringTrimmerEditor(false);
		 binder.registerCustomEditor(String.class, "firstName", editor);
         binder.registerCustomEditor(String.class, "middleName", editor);
		 binder.registerCustomEditor(String.class, "lastName", editor);
		 binder.registerCustomEditor(String.class, "emailName", editor);
		 binder.registerCustomEditor(String.class, "phoneNumber", editor);
		 binder.registerCustomEditor(String.class, "address", editor);
		 SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		 CustomDateEditor customDateEditor = new CustomDateEditor(dateFormat, false);
		 binder.registerCustomEditor(Date.class,"dob",customDateEditor);
		 
		
	
}
}
