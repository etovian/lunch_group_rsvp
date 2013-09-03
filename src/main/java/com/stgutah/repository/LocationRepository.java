package com.stgutah.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stgutah.model.Location;

@Repository("locationRepository")
public interface LocationRepository extends JpaRepository<Location, Integer> {

}
