package com.example.proba.repositories;

import com.example.proba.models.Master;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MasterRepository extends JpaRepository<Master,Long> {
    List<Master> findByFullName(String fullName);

//        @Query(value = "SELECT * FROM Appointment WHERE appointment = ?", nativeQuery = true)
    Master findAllByFullName(String fullName);
}
