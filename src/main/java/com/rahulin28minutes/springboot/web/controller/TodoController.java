package com.rahulin28minutes.springboot.web.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rahulin28minutes.springboot.web.model.Todo;
import com.rahulin28minutes.springboot.web.service.TodoService;

@Controller
@SessionAttributes("Name") // session attributes provide some conversational storage, so that the model attribute can be used in multiple request, Here name attribute is used in TodoController from LoginController ( multiple request [login -> welcome -> list-todos]//
public class TodoController {

	@Autowired
	TodoService service;

	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
	public String showTodosList(ModelMap model) {
		String name = (String) model.get("Name");
		model.put("todos", service.retrieveTodos(name));
		return "list-todos";
	}
	
	

	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
	public String addTodo(ModelMap model) {
		model.addAttribute("todo", new Todo(0, (String) model.get("Name"), " Default Desc", new Date(), false));
		return "todo";
	}
	
	//Command Bean or Form Backing Bean for multiple fields
	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String showAddTodoPage(ModelMap model, @Valid Todo todo, BindingResult result) { 
		
		if(result.hasErrors()){
			return "todo";
		}
		
		service.addTodo((String) model.get("Name"), todo.getDesc(), new Date(), false);
		return "redirect:/list-todos";
		
		
	}
	
	
	
	//Normal way with Request param for one or two fields
	
	/*@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String showAddTodoPage(ModelMap model, @RequestParam String desc) {
		service.addTodo((String) model.get("Name"), desc, new Date(), false);
		//return "list-todos";//it will again redirect to old list-todos page, so to avoid it we can proceed as below, so as to view the updated list-todos page :
		return "redirect:/list-todos";
		
		
	}*/
	
	@RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
	public String deleteTodo(@RequestParam int id) {
		service.deleteTodo(id);
		return "redirect:/list-todos";
	}
	
	@RequestMapping(value = "/update-todo", method = RequestMethod.GET)
	public String updateTodo(@RequestParam int id, ModelMap model) {
		Todo todo = service.retrieveTodo(id);
		model.put("todo", todo);
		return "todo";
	}
		
	@RequestMapping("/hello")
	public @ResponseBody String sayHello(@RequestParam("msg") String msg, @RequestParam String title) {
		return "Hello " + msg;
	}

	@RequestMapping("/employees")
	public @ResponseBody List<String> getEmployees() {
		return Arrays.asList("Rahul", "Ranjan", "Madhuri");
	}

	@RequestMapping("/employees/{empName}")
	public @ResponseBody String getEmployee(@PathVariable("empName") String empName) {
		List<String> emps = Arrays.asList("Rahul", "Ranjan", "Madhuri");
		for (String name : emps) {
			if (name.equalsIgnoreCase(empName)) {
				return empName + " exists";
			}
		}
		return empName + " does not exist";
	}

}
