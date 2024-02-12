describe('Test', () => {
    it('should perform the specified actions', () => {
      cy.visit('http://localhost:3000/');
      cy.get('img[alt="Drill"]').should('be.visible');
      cy.get('[data-testid="profile-link"]').click();
      cy.get('[data-testid="username-input"]').type('admin');
      cy.get('[data-testid="password-input"]').type('a');
      cy.get('[data-testid="login-submit"]').click();
      cy.get('h1').should('contain.text', 'You are logged in');
      cy.get('[data-testid="user-details-address"]').type('Laan 2');
      cy.get('[data-testid="user-details-postal-code"]').type('1234AC');
      cy.contains('button', 'Save').click();
      cy.get('[data-testid="products-link"]').click();
      cy.get('[data-testid="product-name-input"]').type('Scissors');
      cy.get('[data-testid="product-quantity-input"]').type('10');
      cy.get('[data-testid="add-product-submit"]').click();
      cy.get('[data-testid="page-button-2"]').click();
      cy.get('[data-testid="about-link"]').click();
      cy.get('[data-testid="user-score-input"]').type('12');
      cy.get('[data-testid="submit-user-score"]').click();
      cy.get('[data-testid="result-score"]').should('contain.text', 'B');
      cy.contains('li', 'Home').click();
    });
  });