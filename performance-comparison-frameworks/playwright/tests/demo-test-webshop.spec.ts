import { test, expect } from '@playwright/test';

test('test', async ({ page }) => {
  await page.goto('http://localhost:3000/');
  await expect(page.getByRole('img', { name: 'Drill' })).toBeVisible();
  await page.getByTestId('profile-link').click();
  await page.getByTestId('username-input').fill('admin');
  await page.getByTestId('password-input').fill('a');
  await page.getByTestId('login-submit').click();
  await expect(page.getByRole('heading')).toContainText('You are logged in');
  await page.getByTestId('user-details-address').fill('Laan 2');
  await page.getByTestId('user-details-postal-code').fill('1234AC');
  await page.getByRole('button', { name: 'Save' }).click();
  await page.getByTestId('products-link').click();
  await page.getByTestId('product-name-input').fill('Scissors');
  await page.getByTestId('product-quantity-input').fill('10');
  await page.getByTestId('add-product-submit').click();
  await page.getByTestId('page-button-2').click();
  await page.getByTestId('about-link').click();
  await page.getByTestId('user-score-input').fill('12');
  await page.getByTestId('submit-user-score').click();
  await expect(page.getByTestId('result-score')).toContainText("B");
  await page.locator('li').filter({ hasText: 'Home' }).click();
});