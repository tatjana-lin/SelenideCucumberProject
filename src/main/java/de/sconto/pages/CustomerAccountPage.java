package de.sconto.pages;

import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.SelenideElement;
import io.cucumber.java.en_lol.WEN;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;

public class CustomerAccountPage {

    @FindBy(css = ".titleHeadline")
    WebElement userNameTitle;
    public SelenideElement userName(String name) {
        return $(userNameTitle).shouldHave(text(name));
    }
}
