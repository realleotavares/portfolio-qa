import { test, expect } from '@playwright/test';
import { LoginPage } from '../pages/LoginPage';
import { InventoryPage } from '../pages/InventoryPage';
import { CartPage } from '../pages/CartPage';

test.describe('SauceDemo E2E Checkout Flow', () => {
  let loginPage: LoginPage;
  let inventoryPage: InventoryPage;
  let cartPage: CartPage;

  test.beforeEach(async ({ page }) => {
    loginPage = new LoginPage(page);
    inventoryPage = new InventoryPage(page);
    cartPage = new CartPage(page);
    await loginPage.goto();
  });

  test('should complete a purchase successfully (Standard User)', async ({ page }) => {
    // 1. Login
    await loginPage.login('standard_user');
    await inventoryPage.assertIsOnInventoryPage();

    // 2. Add to Cart
    const product = 'Sauce Labs Backpack';
    await inventoryPage.addToCart(product);
    await inventoryPage.assertCartBadgeCount('1');

    // 3. Navigate to Cart
    await inventoryPage.goToCart();
    await cartPage.assertIsOnCartPage();
    await cartPage.assertProductInCart(product);

    // 4. Checkout Process (Inline for brevity in test, normally would have its own CheckoutPage POM)
    await cartPage.proceedToCheckout();
    
    // Checkout: Your Information
    await expect(page.locator('.title')).toHaveText('Checkout: Your Information');
    await page.locator('[data-test="firstName"]').fill('Jane');
    await page.locator('[data-test="lastName"]').fill('Doe');
    await page.locator('[data-test="postalCode"]').fill('90210');
    await page.locator('[data-test="continue"]').click();

    // Checkout: Overview (Deep Assertions: Content and Financial Math Validation)
    await expect(page.locator('.title')).toHaveText('Checkout: Overview');
    await expect(page.locator('.inventory_item_name', { hasText: product })).toBeVisible();
    
    const itemPriceText = await page.locator('.inventory_item_price').innerText();
    const itemPrice = parseFloat(itemPriceText.replace('$', ''));
    expect(itemPrice).toBe(29.99); // Asserting specific product value

    const subtotalText = await page.locator('.summary_subtotal_label').innerText();
    expect(subtotalText).toContain(`$${itemPrice}`);

    const taxText = await page.locator('.summary_tax_label').innerText();
    const tax = parseFloat(taxText.replace('Tax: $', ''));
    
    const totalText = await page.locator('.summary_total_label').innerText();
    const total = parseFloat(totalText.replace('Total: $', ''));
    
    // Validate that the system correctly calculates the final total
    expect(total).toBeCloseTo(itemPrice + tax, 2);

    await page.locator('[data-test="finish"]').click();

    // Checkout: Complete
    await expect(page.locator('.title')).toHaveText('Checkout: Complete!');
    await expect(page.locator('.complete-header')).toHaveText('Thank you for your order!');
  });

  test('should fail to login with locked out user', async () => {
    await loginPage.login('locked_out_user');
    await loginPage.assertErrorMessage('Epic sadface: Sorry, this user has been locked out.');
  });
});
