class cartPage {
    btnAdd() {
        return cy.get('span.text').find('span.txt-main.text_1').click();
    }

    btnCart() {
        return cy.get('div.bottom-action').find('div.cart_btn-close.tocontinued').click();
    }
}
export default new cartPage();