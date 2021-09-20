package com.Education.Controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Education.Admin.Admin;
import com.Education.Client.AssginLogin;
import com.Education.Client.Registration;
import com.Education.DaoImpl.DataBaseImpl;

@Controller

@RequestMapping("/Admin")
public class Controller2 {
	@Autowired
	private DataBaseImpl baseImpl;
	
	
//	
//	@RequestMapping("/admin")
//	public String admin(@ModelAttribute("loginData") LoginAdmin login) {
//		return "loginAdmin";
//	}
//	
//	@RequestMapping(value="/loginDataAdmin",method=RequestMethod.POST)
//	public String adminLogin(LoginAdmin admin)
//	{
//
//		String adminName = admin.getUserName();
//		String password = admin.getPassword();
//		if(adminName.equals("arvin")&& password.equals("Aiharishanker"))
//		{
//			int i=1;
//			
//			return "AdminPanel";
//		}
//		else
//			return "redirect:/Admin";
//	}
        
        @RequestMapping(value="/AdminPanel",method=RequestMethod.GET)
        public String adminPanel(Model model) {
        	int i =1;
        	baseImpl.setTrueOrFalse(i);
        	int i2 =baseImpl.dataCount("Student_de");
        	model.addAttribute("student", i2);
        
        	
        	return "AdminPanel";
        }
        @RequestMapping(value="/addDepertment",method=RequestMethod.POST)
        public String depertment() {
        	return "adminDepartment";
        }
	@RequestMapping("/showStudent")
	public String showStudents( Model model) {
		List<Registration> reg= baseImpl.showStudent();
		model.addAttribute("reg",reg);
		System.out.println(reg);
		return "AdminPanel";
	}
	@RequestMapping("/userId")
	public String userId(@RequestParam("id") String name,Model model) {
		
		Registration li = baseImpl.findByStudentId(name);
		model.addAttribute("userId",li);
		return "AdminPanel";
	}
	@GetMapping("/addCourse")
	public String addCourse()
	{
		return "AddCourses";
	}
	@GetMapping("/addTeacher")
	public String addTeacher()
	{
		return "AddTeacher";
	}
	@GetMapping("/addNotes")
	public String addNotes() {
		return "Notes";
	}
	@GetMapping("/addAdmin")
	public String addAdmin(@Valid @ModelAttribute("adminData") Admin admin, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "AddByAToA";
		} else
			return "AdminPanel";

		
	}
	 
		@GetMapping("/adminModeOn")
		public String valOn() {
			int i=1;
			baseImpl.setTrueOrFalse(i);
			return "AdminPanel";
			
		} 
		@GetMapping("/adminModeOff")
		public String valoff() {
			int i=0;
			baseImpl.setTrueOrFalse(i);
			return "AdminPanel";
			
		}
		@PostMapping("/assginLogin")
		public String AssginLogin(@RequestParam("userName") String name,@RequestParam("userpassword") String password,@RequestParam("userAccount") int i,Model model) {
		 	 baseImpl.assginLogin(name, password, i);
		 	 model.addAttribute("assginLogin", "Done But Assgin the role ");
			return "AdminPanel";
			
		}
		@PostMapping("/assginRole")
		public String assginRole(@RequestParam("userName") String name,@RequestParam("userRole") String role, Model model) {
			baseImpl.assginRole(name, role);

		 	 model.addAttribute("assginRole", "Done  ");
		 	 return "AdminPanel";
			
		}
		@GetMapping("/getLogins")
		@ResponseBody
		public List<AssginLogin> loginData( ){
			List<AssginLogin>i =baseImpl.assginLogin();
			System.out.println(i);
			return i;
			
		}
	
	
	
}
