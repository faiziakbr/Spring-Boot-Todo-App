package com.example.todo_app.demo.repository;

import com.example.todo_app.demo.models.Task;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepository extends JpaRepository<Task, Long> {

}
