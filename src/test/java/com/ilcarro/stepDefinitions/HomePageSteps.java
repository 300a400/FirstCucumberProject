package com.ilcarro.stepDefinitions;

import com.ilcarro.pages.HomePage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static com.ilcarro.pages.BasePage.driver;

public class HomePageSteps {

    @Given("User launches chrome browser")
    public void launches_chrome_browser() {
        new HomePage(driver).launchBrowser();

    }

    @When("User open ilcarro HomePage")
    public void open_ilcarro_Homepage() {
        new HomePage(driver).openURL();

    }

    @Then("User verifies HomePage title")
    public void verifies_HomePage_title() {
        new HomePage(driver).isHomePageTitleDisplayed();

    }

    @And("User quit browser")
    public void quit_browser() {
        new HomePage(driver).tearDown();

    }
}
