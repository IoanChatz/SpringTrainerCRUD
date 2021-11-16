package com.mysrping.TrainerCRUD.controllers;

import com.mysrping.TrainerCRUD.models.Trainer;
import com.mysrping.TrainerCRUD.services.TrainerServiceInterface;
import com.mysrping.TrainerCRUD.validators.TrainerValidator;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author IoanChatz
 */
@Controller
public class TrainerController {
    
    @Autowired
    TrainerValidator trainerValidator;
    
    @Autowired
    TrainerServiceInterface trainerServiceInterface;
    
    @InitBinder
    private void initBinder(WebDataBinder binder){
        binder.addValidators(trainerValidator);
    }

    @GetMapping("/")
    public String showHomePage(ModelMap model) {
        return "homePage";
    }

    @GetMapping("/callInsertTrainerForm")
    public String callInsertTrainerForm(ModelMap model) {
        model.addAttribute("newtrainer", new Trainer());
        return "trainerForm";
    }

    @PostMapping("/insertTrainer")
    public String insertTrainer(@Valid @ModelAttribute("newtrainer") Trainer t, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainerForm";
        } else {
            trainerServiceInterface.addTrainer(t);
            return "InsertUpdateResult";
        }
    }

    @GetMapping("/callDeleteTrainerList")
    public String callDeleteTrainerList(ModelMap model) {
        model.addAttribute("list", trainerServiceInterface.getAllTrainers());
        return "trainersListForDelete";
    }

    @PostMapping("/deleteTrainer/{id}")
    public String deleteTrainer(@PathVariable int id) {
        System.out.println(id);
        trainerServiceInterface.deleteTrainer(id);
        return "deleteResult";
    }

    @GetMapping("/callUpdateTrainerList")
    public String callUpdateTrainerList(ModelMap model) {
        model.addAttribute("listofentities", trainerServiceInterface.getAllTrainers());
        return "trainersListForUpdate";
    }

    @GetMapping("/updatetrainerlist/{id}")
    public String updateTrainer(@PathVariable int id, ModelMap model) {
        Trainer trainer = trainerServiceInterface.getTrainerById(id);
        model.addAttribute("trainer", trainer);
        return "trainerUpdateForm";
    }

    @PostMapping("/updateTrainerFromDb")
    public String updateExistingTrainer(@Valid @ModelAttribute("trainer") Trainer t, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "trainerUpdateForm";
        } else {
            trainerServiceInterface.updateTrainer(t);
            return "InsertUpdateResult";
        }
    }

    @GetMapping("/readTrainerList")
    public String readTrainerList(ModelMap model) {
        model.addAttribute("listoftrainers", trainerServiceInterface.getAllTrainers());
        return "allTrainersList";
    }

}
