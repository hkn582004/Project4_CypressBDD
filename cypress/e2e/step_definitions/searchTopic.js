import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
Given("I am on the homepage", () => {
  cy.visit("https://ebookstore.com.vn/");
});

When("I click on the {string} category", (category) => {
  // Dùng text của category để click
  cy.contains("a.title-name", category).click();
});

Then("I should be redirected to {string}", (expectedPath) => {
  cy.location("pathname").should("eq", expectedPath);
  cy.wait(3000);
});

