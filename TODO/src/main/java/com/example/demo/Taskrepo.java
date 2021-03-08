package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface Taskrepo extends JpaRepository<Task, Integer> {

}