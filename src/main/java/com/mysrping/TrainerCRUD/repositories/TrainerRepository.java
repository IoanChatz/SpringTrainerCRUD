package com.mysrping.TrainerCRUD.repositories;

import com.mysrping.TrainerCRUD.models.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author IoanChatz
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer> {
    
}
