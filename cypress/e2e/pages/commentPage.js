class commentPage {
  visit(url) {
    cy.visit(url);
  }

  txtFullName(name) {
  cy.get("#full-name").clear();
  if (name && name.trim() !== "") { //kiểm tra chuỗi không rỗng hoặc chỉ có khoảng trắng
    cy.get("#full-name").type(name);
  }
}

 txtEmail(email) {
  cy.get('input[name="Email"]').clear();
  if (email && email.trim() !== "") {
    cy.get('input[name="Email"]').type(email);
  }
}

  txtComment(content) {
  cy.get("#comment").clear();
  if (content && content.trim() !== "") {
    cy.get("#comment").type(content);
  }
}

  clickButton() {
    cy.get('button[type="submit"].btn-primary').click();
  }

  verifyResult(expected) {
    if (expected === "success") {
      cy.url().should("include", "review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than");
    } else if (expected === "fail") {
      cy.url().should("include", "review-top-nhung-cuon-sach-nen-doc-trong-doi-de-phat-trien-ban-than");
    }
  }
}

export default commentPage;
