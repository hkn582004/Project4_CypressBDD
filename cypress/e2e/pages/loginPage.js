
class loginPage {
  visit() {
    cy.visit("/account/login");
  }

  txtUsername(email) {
    cy.get("#customer_email").clear().type(email);
  }

  txtPassword(pass) {
    cy.get("#customer_password").clear().type(pass);
  }

  btnLogin() {
    cy.get("input[type='submit'][value='Đăng nhập']").click();
  }

  login(email, password) {
    if (email) this.txtUsername(email);
    if (password) this.txtPassword(password);
    this.btnLogin();
  }

  verifyRedirect(expectedUrl) {
    cy.location("pathname").should("eq", expectedUrl);
  }
}

export default new loginPage();
