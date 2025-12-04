class cartPage {
    btnAdd() {
        return cy.contains('span.txt-main.text_1', 'Thêm vào giỏ').click({ force: true });
    }

    btnCart() {
        return cy.get('div.bottom-action').find('div.cart_btn-close.tocontinued').click();
    }
}
export default new cartPage();