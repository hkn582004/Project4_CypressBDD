import { Given, When, Then } from "cypress-cucumber-preprocessor/steps";
import cartPage from "../pages/cartPage";

Given("I open the product {string}", (path) => {
  cy.visit(path);
});

When("I add the product to the cart", () => {
  cartPage.btnAdd();
});

When ("I go to the cart", () => {
  cartPage.btnCart();
  cy.visit('/cart')
});

Then("the cart should show the product name {string}", (expectedName) => {
  cy.get("a.ajaxcart__product-name").first() // lấy phần tử đầu tiên nếu có nhiều sản phẩm
  .invoke("text") // lấy text bên trong thẻ <a>
  .then((text) => {
      expect(text.trim()).to.eq(expectedName);
    });
});

Then("the cart should show the unit price {int}", (expectedPrice) => {
  cy.get(".ajaxcart__row .cart-price").first()
  .invoke("text")
  .then((text) => {
      const price = parseInt(text.replace(/[^\d]/g, ""), 10); // Chuyển đổi chuỗi giá thành số nguyên và loại bỏ các ký tự không phải số
      expect(price).to.eq(expectedPrice);
    });
});

