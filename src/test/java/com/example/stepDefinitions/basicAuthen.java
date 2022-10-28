package com.example.stepDefinitions;
import com.example.helpers.GenericHelpers;
import io.cucumber.java.en.When;

import static com.example.helpers.GenericHelpers.*;

public class basicAuthen {


    @When("^user enters (.*) and (.*) in the alert$")
    public void enterValuesInAlert(String username, String password) {
        String[] name = getLocatorFromDictionary(username);
        String[] pass = getLocatorFromDictionary(password);
        String decodeName = GenericHelpers.decodeTheEncryptedString(name[0]);
        String decodePassword = GenericHelpers.decodeTheEncryptedString(pass[0]);
        String URL = "https://" +decodeName +":" +decodePassword +"@"+ "the-internet.herokuapp.com/basic_auth";
        driver.get(URL);

    }
}