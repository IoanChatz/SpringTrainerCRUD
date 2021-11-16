package com.mysrping.TrainerCRUD.services;

import com.mysrping.TrainerCRUD.models.Trainer;
import java.util.List;

/**
 *
 * @author IoanChatz
 */
public interface TrainerServiceInterface {
    
    public List<Trainer> getAllTrainers();
    public void addTrainer(Trainer t);
    public void deleteTrainer(int id);
    public void updateTrainer(Trainer t);
    public Trainer getTrainerById(int id);
}
