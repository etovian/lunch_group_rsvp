package com.stgutah.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stgutah.model.Person;

@Repository("personRepository")
public interface PersonRepository extends JpaRepository<Person, Integer> {

	
}
