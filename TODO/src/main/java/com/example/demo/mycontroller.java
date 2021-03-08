package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mycontroller {
@Autowired
Projectrepo prepo;
@RequestMapping("task{tid}delete{pid}")
public String closeTask(@PathVariable int tid,@PathVariable int pid) {
	Project project=prepo.findById(pid).get();
	
	for(Task t:project.tasks) 
	{
		if(t.id==tid)
			t.status=false;
	}
	
	prepo.save(project);
	return "redirect:viewtask"+pid;
	
}

@RequestMapping("tasksave{id}")
public String savetask(Task task, @PathVariable int id) {
	Project project=prepo.findById(id).get();
	project.tasks.add(task);
	prepo.save(project);
	return "redirect:viewtask"+id;
	}





@RequestMapping("addtask{id}")
public String addtask(@PathVariable int id,Model m)
{
	Project project=prepo.findById(id).get();
	Task task=new Task();
	m.addAttribute("project", project);
	m.addAttribute("task", task);
	return "addtask.jsp";
	
}

@RequestMapping("viewtask{id}")
public String viewtask(@PathVariable int id, Model m) {
	Project project=prepo.findById(id).get();
	m.addAttribute("project", project);
	return "Tasklist.jsp";
	
}



@RequestMapping("projecthome")
public  String projecthome(Model m) {
	List<Project>plist=prepo.findAll();
	m.addAttribute("plist", plist);
	System.out.println("hii");
	return "projecthome.jsp";
	
}
@RequestMapping("projectadd")
public String projectadd(Model m) {
	Project project=new Project();
	System.out.println("hello");
	m.addAttribute("project", project);
	return "projectadd.jsp";
	
}
@RequestMapping("projectsave")
public String projectsave(Project project) {
	prepo.save(project);
	System.out.println("hwwwww");
	return "redirect:projecthome";
	
}
@RequestMapping("projectdelete{id}")
public String deleteproject(@PathVariable int id) {
	prepo.deleteById(id);
	System.out.println("ggggggggggg");
	return "redirect:projecthome";
	
}







}
