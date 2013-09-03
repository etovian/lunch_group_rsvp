package com.stgutah.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stgutah.model.Invitation;

@Repository
public interface InvitationRepository extends JpaRepository<Invitation, Integer>{

}
