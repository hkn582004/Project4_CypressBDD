import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
Cypress.on('uncaught:exception', (err, runnable) => { //Lệnh này giúp bỏ qua các lỗi JavaScript không mong muốn trong trang web đang test
  return false; //tránh làm fail bài test do những lỗi không liên quan.
});

Given('I am on the search page', () => {
  cy.visit('https://ebookstore.com.vn/')
});

When("I search for {string}", (keyword) => {
  cy.get('.header-search-form').within(() => { //within để giới hạn phạm vi tìm kiếm trong form tìm kiếm
    cy.get('.input-group-field').type(keyword);
  });
});

Then("I should see product results", () => {
  cy.get(".product-name").should("exist").and("be.visible"); //mỗi sản phẩm nằm trg 1 div có class là product-name
    cy.wait(3000)
});


