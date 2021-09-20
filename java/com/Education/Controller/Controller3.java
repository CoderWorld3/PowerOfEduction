package com.Education.Controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.Education.Client.Registration;
import com.Education.Client.StudentAndCourse;
import com.Education.Client.StudentAndNote;
import com.Education.Courses.Courses;
import com.Education.DaoImpl.DataBaseImpl;
import com.Education.Notes.Notes;
import com.Education.Teacher.Teacher;

@Controller
@SessionAttributes("notes")
public class Controller3 {
	@Autowired
	DataBaseImpl dataBaseImpl;
	@GetMapping("/Student_deshBorad")
 public String Student(Principal pri, Model model) {
	 Object o= dataBaseImpl.findStudentByName(pri.getName());
 model.addAttribute("St_de",o);
 
	  return "Student_deshBroad";
 }
	@GetMapping("/Teacher_deshBorad")
 public String Teacher() {
	 return "Teacher_deshBroad";
 }
	
 
	@PostMapping("/Admin/addCoursesByAdmin")
	
 public String addCoursesByAdmin( @Valid@ModelAttribute("data") Courses courses,BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			return "AddCourses";
		}
		else {
		dataBaseImpl.saveCourse(courses);
		 return  "Success";
		}
 }
//	this is Only for Teacher
	@GetMapping("/fatchTeacher")
	@ResponseBody
	public List<Teacher> teacher( Teacher teacher){
		List<Teacher>i = dataBaseImpl.getTeachers();
		System.out.println(i);
		return i;
		
	}
	@RequestMapping("/teacherId")
	@ResponseBody
	public Teacher teacherId(@RequestParam("TeacherId") String name,Model model) {
		System.out.println(name);
		Teacher li =dataBaseImpl.findByTeacherID(name);
		return li;
	}
	@RequestMapping("/Admin/deleteTeacherId")
	public String deleteteacherId(@RequestParam("id") String name,Model model) {
	
		int li =dataBaseImpl.deleteByTeacherID(name);
		model.addAttribute("teacherMessage","deleted"+name)	;
		return "AddTeacher";
	}
//	this is Only for Courses
	@GetMapping("/fatchCourses")
	@ResponseBody
	public List<Courses> courses1( Courses course){
		List<Courses>i = dataBaseImpl.getCourses();
		System.out.println(i);
		return i;
		
	}
	@GetMapping("/fatchCourses1")
	
	public String courses2( Model model){
		List<Courses>i = dataBaseImpl.getCourses();
		model.addAttribute("i",i);
		System.out.println(i);
		
		return "Courses";
		
	}
	@RequestMapping("/courseId")
	@ResponseBody
	public Courses courseId(@RequestParam("CourseId") String name,Model model) {
		System.out.println(name);
		Courses li =dataBaseImpl.findByCourseID(name);
		return li;
	}
	@RequestMapping("/deleteCourseId")
	@ResponseBody
	public int deleteCourseId(@RequestParam("CourseId") String name,Model model) {
		System.out.println(name);
		int li =dataBaseImpl.deleteByCourseID(name);
		return li;
	}

	@PostMapping("/Admin/updateCourse")
	public String updateCourse(@RequestParam("id") String id,@RequestParam("courseName") String courseName,
			@RequestParam("courseDuration") String courseDuration,@RequestParam("courseLink") String courseLink,Model model) {
	dataBaseImpl.updateCourse(id,courseName,courseDuration,courseLink);

	model.addAttribute("message", "Delete the Data"+" "+id);
		return "AddCourses";
	}

	@PostMapping("/Admin/courseDelete")
	
public String courseDelete(@RequestParam("id") String id ,Model model) {
		model.addAttribute("message1", "Delete the Data"+id);
		dataBaseImpl.deleteByCourseID(id);
	return "AddCourses";
}
	@PostMapping("/Admin/addTeacherData")
	
public String addTeacher(@Valid @ModelAttribute("TeacherData") Teacher teacher ,Model model,BindingResult bindingResult)
	{
		if(bindingResult.hasErrors()) {
			return "Exception";
		}
		else {
		dataBaseImpl.saveTeacher(teacher);
		model.addAttribute("teacherMessage","Added to DataBAse");
		
	return "AddTeacher";
		}
} 
	
	
	  @GetMapping("/getTeachers")
  @ResponseBody
public List<Teacher> teacher1( ){
	List<Teacher>i = dataBaseImpl.getTeachers();
	System.out.println(i);
	return i;
	
}
	  @GetMapping("/getTeachers1")
	public String teacher2( Model model){
		  
		List<Teacher>i = dataBaseImpl.getTeachers();
		model.addAttribute("i", i);
		System.out.println(i);
		return "Teacher";
		
	}
	  @PostMapping("/updateTeacher")
public String updateTeacher(@RequestParam("id")String id,@RequestParam("firstName") String name,@RequestParam("middleName") String middleName, @RequestParam("lastName") String lastName, @RequestParam("subject")String subject,@RequestParam("gender") char gender,
@RequestParam("age")Integer age, @RequestParam("address")String address, @RequestParam("password")String password,@RequestParam("phone") Integer phone,@RequestParam("email") String email,@RequestParam("userName") String username,Model model) {
	 int i = dataBaseImpl.updateTeacher(id, name, middleName, lastName, subject, gender, age, address, password, phone, email, username);
	model.addAttribute("teacherUpdateMessage", "its Done into database");
	 return "AddTeacher";
}
	
		@RequestMapping(value = "/Admin/notesFile",method = RequestMethod.POST)
		public String EmailConfirm(@RequestParam("profile") CommonsMultipartFile pri,Model model,HttpSession httpSession) {
			model.addAttribute("notes",pri.getOriginalFilename());
//			System.out.println(pri.getSize());
//			System.out.println(pri.getContentType());
//			System.out.println(pri.getName());
//			System.out.println(pri.getOriginalFilename());
//			byte[] file=pri.getBytes();
//			/Users/arvinmishra/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PowerOfEducation/WEB-INF/uploadsImage
			String path= httpSession.getServletContext().getRealPath("/")+"resource"+File.separator+"notes"+File.separator+pri.getOriginalFilename();
			
	       
	         
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
			return "Notes";
		}
	

		@PostMapping("/Admin/saveNotes")
		public String saveNotes(@RequestParam("no_subject") String subject,
				@RequestParam("no_name") String N_title ,Model e) {
			String notes_name=(String) e.getAttribute("notes") ;
			
			int i = dataBaseImpl.saveNotes(subject,notes_name,N_title );
			return "Notes";
			
			
		}
		@PostMapping("/requestForCourses")
		public String requestCourse(@RequestParam("Re_to") String course_id,@RequestParam("St_id") String St_Id,Model model) {
		dataBaseImpl.requestCourse(course_id,St_Id);

		model.addAttribute("message", "Requestd!Please Wait for day");
			return "Student_deshBroad";
		}
		@PostMapping("/requestForNotes")
		public String requestNotes(@RequestParam("Re_to") String course_id,@RequestParam("St_id") String St_Id,Model model) {
		dataBaseImpl.requestNotes(course_id,St_Id);

		model.addAttribute("message", "Requestd!Please Wait for day");
			return "Student_deshBroad";
		}
		@PostMapping("/requestForAppoinment")
		public String requestAppointment(@RequestParam("Re_to") String course_id,@RequestParam("St_id") String St_Id,Model model) {
		dataBaseImpl.requestNotes(course_id,St_Id);

		model.addAttribute("message", "Requestd!Please Wait for day");
			return "Student_deshBroad";
		}


		 
		 
		  @GetMapping("/getNotes")
		  @ResponseBody
		public List<Notes> note( ){
			List<Notes>i = dataBaseImpl.getNotes();
			
			return i;
			
		} 

		  @GetMapping("/getStudents")
	  @ResponseBody
	public List<Registration> StudentData( ){
		List<Registration>i = dataBaseImpl.showStudent();
		System.out.println(i);
		return i;
		
	}
		  @PostMapping("/Admin/assginCourse")
		  public String assginCourse(@RequestParam("St_id") String St_id,@RequestParam("Co_id") String courseid,Model model) {
			   dataBaseImpl.assginCourse(St_id, courseid);
			   model.addAttribute("course", "Assgin SuccessFul");
			  return"AdminPanel";
		  } 
		  @PostMapping("/Admin/assginNote")
		  public String assginNote(@RequestParam("St_id") String co_id,@RequestParam("No_id") String NId,@RequestParam("Co_id") String courseid ,Model model) {
			 dataBaseImpl.assginNote(co_id, NId, courseid);

			   model.addAttribute("notes", "Assgin SuccessFul");
			  return"AdminPanel";
		  } 
		  @PostMapping("/Admin/assginCourseToTeacher")
		  public String assginCourseToTeacher(@RequestParam("Te_id") String Te_id,@RequestParam("Co_id") String courseid,Model model) {
			 dataBaseImpl.assginCourseToTeacher(Te_id, courseid);

			   model.addAttribute("teacher", "Assgin SuccessFul");
			  return"AdminPanel";
		  }
	 
		  @GetMapping("/approvedCourse")
		  @ResponseBody
		  public List<StudentAndCourse> SandC(){

			 List<StudentAndCourse> studentAndCourse= dataBaseImpl.studentAndCourse();
			  return studentAndCourse;
		  
		  }
		  @GetMapping("/approvedNote")
		  @ResponseBody
		  public List<StudentAndNote> SandN(){

			  List<StudentAndNote> studentAndCourse= dataBaseImpl.studentAndNote();
			  return studentAndCourse;
		  
		  }
}
