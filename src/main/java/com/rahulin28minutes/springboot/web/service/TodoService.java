package com.rahulin28minutes.springboot.web.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.rahulin28minutes.springboot.web.model.Todo;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<Todo>();
    private static int todoCount = 3;

    static {
        todos.add(new Todo(1, "rahul", "Learn Spring MVC", new Date(),
                false));
        todos.add(new Todo(2, "rahul", "Learn Struts", new Date(), false));
        todos.add(new Todo(3, "rahul", "Learn Hibernate", new Date(),
                false));
    }

    public List<Todo> retrieveTodos(String user) {
        List<Todo> filteredTodos = new ArrayList<Todo>();
        for (Todo todo : todos) {
            if (todo.getUser().equals(user)) {
                filteredTodos.add(todo);
            }
        }
        return filteredTodos;
    }
    
    // To retrieve a single todo
    public Todo retrieveTodo(int id) {
		for (Todo todo : todos) {
			if (todo.getId() == id)
				return todo;
		}
		return null;
	}

    public void addTodo(String name, String desc, Date targetDate,
            boolean isDone) {
        todos.add(new Todo(++todoCount, name, desc, targetDate, isDone));
    }

    public void deleteTodo(int id) {
        Iterator<Todo> iterator = todos.iterator();
        while (iterator.hasNext()) {
            Todo todo = iterator.next();
            if (todo.getId() == id) {
                iterator.remove();
            }
        }
    }
}