package com.example.proba.services;

import com.example.proba.models.Appointment;
import com.example.proba.repositories.AppoinmentRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@AllArgsConstructor
@Slf4j
@Service
public class AppointmentService {
    private final AppoinmentRepository appoinmentRepository;
    //    public List<Appointment> listAppointment(String name){
//        if(name != null) return appoinmentRepository.findByName(name);
//        return appoinmentRepository.findAll();
//    }
    public List<Appointment> list(String name)
    {
        return appoinmentRepository.findAll();
    }

    public boolean addToAppoinment(Appointment appointment) {
        if (appoinmentRepository.findAllByName(appointment.getName()) != null) {
            return false;
        }
        appoinmentRepository.save(appointment);
        return true;
    }

    public void deleteAppointment(Long id) {
        appoinmentRepository.deleteById(id);
    }
}