package com.example.todo_app.demo.controller;

import com.example.todo_app.demo.models.Task;
import com.example.todo_app.demo.services.TaskService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/tasks")
public class TaskController {

    private final TaskService taskService;

    public TaskController(TaskService taskService) {
        this.taskService = taskService;
    }

    @GetMapping
    public List<Task> getTasks() {
        List<Task> taskList = taskService.getAllTasks();
        return taskList;
    }
}
