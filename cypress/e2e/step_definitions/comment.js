
import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
import commentPage from "../pages/commentPage";

const cmt = new commentPage();

Given("I visit the review page {string}", (url) => {
  cmt.visit(url);
});

When(
  "I enter information {string}, {string}, {string}",
  (fullname, email, comment) => {
    if (fullname !== "") { //kiểm tra chuỗi không rỗng, nếu chuỗi rỗng sẽ giữ nguyên giá trị cũ
      cmt.txtFullName(fullname);
    }
    if (email !== "") {
      cmt.txtEmail(email);
    }
    if (comment !== "") {
      cmt.txtComment(comment);
    }
  }
);


When("I click the submit button", () => {
  cmt.clickButton();
});

Then("I check the results {string}", (expected) => {
  cy.get("#comment").invoke("val").then((commentText) => {
    cmt.verifyResult(expected, commentText);
  });
});

