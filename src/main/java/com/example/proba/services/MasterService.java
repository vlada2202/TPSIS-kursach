package com.example.proba.services;

import com.example.proba.models.Image;
import com.example.proba.models.Master;
import com.example.proba.repositories.MasterRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@RequiredArgsConstructor
@Slf4j
@Service
public class MasterService {
    private final MasterRepository masterRepository;

    public List<Master> mastersList(String name){
        if(name != null) return masterRepository.findByFullName(name);
        return masterRepository.findAll();
    }

    public boolean addMaster(Master master) {
        if (masterRepository.findAllByFullName(master.getFullName()) != null) {
            return false;
        }
        masterRepository.save(master);
        return true;
    }
    public void deleteMaster(Long id)
    {
        masterRepository.deleteById(id);
    }
}

