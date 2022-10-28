package com.example.stepDefinitions;

import io.cucumber.java.en.And;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static com.example.helpers.GenericHelpers.driver;

public class GeoLocation {
    @And("^user accepts the alert pop up$")
    public void userAcceptAlertPopUp() {
        WebDriverWait wait = new WebDriverWait(driver, Duration.ofMillis(3000));
        wait.until(ExpectedConditions.alertIsPresent());
        driver.switchTo().alert().accept();

    }
}
