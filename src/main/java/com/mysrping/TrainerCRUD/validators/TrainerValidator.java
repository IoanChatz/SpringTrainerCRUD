package com.mysrping.TrainerCRUD.validators;

import com.mysrping.TrainerCRUD.models.Trainer;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 *
 * @author IoanChatz
 */
@Component
public class TrainerValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return Trainer.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        Trainer t = (Trainer) target;
        if (t.getSubject().equals("-1")) {
            errors.rejectValue("subject", "trainer.no.t", "Please chose a subject.");
        }
        if (!validName(t.getFirstname())) {
            errors.rejectValue("firstname", "trainer.no.t", "First Name must contain only letters.");
        }
        if (!validName(t.getLastname())) {
            errors.rejectValue("lastname", "trainer.no.t", "Last Name must contain only letters.");
        }

    }

    public boolean validName(String str) {
        String s1 = "[a-zA-Z]+";
        return str.matches(s1);
    }
}
