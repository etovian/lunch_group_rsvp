package com.stgutah.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stgutah.model.Event;

@Repository("eventRepository")
public interface EventRepository extends JpaRepository<Event, Integer> {

}
