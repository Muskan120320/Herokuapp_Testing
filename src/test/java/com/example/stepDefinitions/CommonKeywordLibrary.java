package com.example.stepDefinitions;

import com.example.helpers.GenericHelpers;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.awt.*;
import java.time.Duration;

import static com.example.helpers.GenericHelpers.driver;
import static com.example.helpers.GenericHelpers.getLocatorFromDictionary;

public class CommonKeywordLibrary {
    @Then("^user can view (.*)$")
    public void isDisplayed(String text) throws InterruptedException {
        Thread.sleep(5000);
//        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
//        wait.until(ExpectedConditions.invisibilityOf(By.cssSelector()));
        driver.findElement(By.xpath(".//*[contains(text(), '" + text + "')]")).isDisplayed();
    }

    @And("^user selects the file to upload$")
    public void uploadFile(WebElement upload) {
        driver.findElement(By.cssSelector("#" + upload ));
//        upload.sendKeys("C:\\Users\\p\\Desktop\\upload\\image\\images.jfif");
        driver.findElement(By.id("")).click();
    }

    @And("^user moves the pointer outside webpage$")
        public void exitIntent() throws AWTException {
            Robot rb = new Robot();
            rb.mouseMove(600, 0);
        }

    @When("^user enters (.*) and (.*) in the alerts$")
    public void enterValuesInAlert(String username, String password, String link) {
        String[] name = getLocatorFromDictionary(username);
        String[] pass = getLocatorFromDictionary(password);
        String[] locator=getLocatorFromDictionary(link);
        String decodeName = GenericHelpers.decodeTheEncryptedString(name[0]);
        String decodePassword = GenericHelpers.decodeTheEncryptedString(pass[0]);
        String URL = "https://" + decodeName + ":" + decodePassword + "@" + "the-internet.herokuapp.com/"+locator+"";
        driver.get(URL);
    }

    @And("^user scrolls down at bottom$")
    public void ScrollsBottom() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,document.body.scrollHeight)");
    }

    @And("^user moves mouse on (.*)$")
    public void MouseHover(String cssSelector) throws InterruptedException {
        WebElement element = driver.findElement(By.cssSelector("#" + cssSelector));
        Actions action= new Actions(driver);
        action.moveToElement(element).perform();
    }

}

