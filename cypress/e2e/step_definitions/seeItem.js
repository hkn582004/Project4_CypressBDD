
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
Given("I am on the product page {string}", (url) => {
  cy.visit(url);
});

Then("I should see the {word} as {string}", (field, expected) => {
  switch (field) {
    case "name":
      cy.get("h1.title-product").should("be.visible").and("contain.text", expected);   // dùng contain.text để tránh lỗi khoảng trắng
      break;
      
    case "brand":
      cy.get("span.a-vendor").should("be.visible").and("contain.text", expected);
      break;

    case "stock":   
      cy.get("span.a-stock").should("be.visible").and("contain.text", expected);
      break;

    case "code":
      cy.get("span.a-sku").should("be.visible").and("contain.text", expected);
      break;

    case "type":
      cy.get("span.a-vendor").should("be.visible").and("contain.text", expected);
      break;

    default:
      throw new Error(`Unknown field: ${field}`);
  }
});
