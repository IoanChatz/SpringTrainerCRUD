package com.mysrping.TrainerCRUD.services;

import com.mysrping.TrainerCRUD.models.Trainer;
import com.mysrping.TrainerCRUD.repositories.TrainerRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author IoanChatz
 */
@Service
public class TrainerServiceImpl implements TrainerServiceInterface{

    @Autowired
    TrainerRepository trainerRepository;
    
    @Override
    public List<Trainer> getAllTrainers() {
      return trainerRepository.findAll();
    }

    @Override
    public void addTrainer(Trainer t) {
        trainerRepository.save(t);
    }

    @Override
    public void deleteTrainer(int id) {
        trainerRepository.deleteById(id);
    }

    @Override
    public void updateTrainer(Trainer t) {
            trainerRepository.save(t);     

    }

    @Override
    public Trainer getTrainerById(int id) {
        Optional<Trainer> optionalTrainer = trainerRepository.findById(id);
        Trainer trainer = null;
        if (optionalTrainer.isPresent()) {
            trainer = optionalTrainer.get();
        } else {
            throw new RuntimeException("Trainer with id " + id + " not found.");
        }
        return trainer;
    }
    

    
}
