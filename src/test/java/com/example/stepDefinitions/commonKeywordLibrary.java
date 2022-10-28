package com.example.stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static com.example.helpers.GenericHelpers.driver;

public class commonKeywordLibrary {
    @Then("^user can view (.*)$")
    public void isDisplayed(String text) throws InterruptedException {
        Thread.sleep(5000);
//        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
//        wait.until(ExpectedConditions.invisibilityOf(By.cssSelector()));
        driver.findElement(By.xpath(".//*[contains(text(), '" + text + "')]")).isDisplayed();
    }

    @And("^user selects the file to upload$")
    public void chooseFileFromLocalSystem(WebElement upload) {
        upload.sendKeys("C:/Users/p/Desktop/1.jpg.webp");
    }
}
