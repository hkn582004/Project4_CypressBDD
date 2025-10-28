import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
import loginPage from "../pages/loginPage";

// Mở trang login
Given("I open the login page", () => {
  loginPage.visit();
});

// Nhập email và password + click login (gọi 1 hàm duy nhất)
When("I enter email {string} and password {string}", (email, password) => {
  loginPage.login(email, password);
});

// Kiểm tra URL sau khi đăng nhập
Then("I should be redirected to {string}", (expectedUrl) => {
  loginPage.verifyRedirect(expectedUrl);
});


