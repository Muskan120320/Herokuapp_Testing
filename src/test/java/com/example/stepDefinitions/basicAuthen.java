package com.example.stepDefinitions;
import io.cucumber.java.en.When;

import static com.example.helpers.GenericHelpers.*;

public class basicAuthen {

    String username = "admin";

    String password = "admin";

    @When("user enters (.*) and (.*) in the alert")

    public void enterValuesInAlert() {

        String URL = "https://" + username + ":" + password + "@" + "the-internet.herokuapp.com/basic_auth";
        driver.get(URL);
    }
}