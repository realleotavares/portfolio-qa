import { Page, expect } from '@playwright/test';

export class CartPage {
  readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  async assertIsOnCartPage() {
    await expect(this.page.locator('.title')).toHaveText('Your Cart');
  }

  async assertProductInCart(productName: string) {
    const item = this.page.locator('.inventory_item_name', { hasText: productName });
    await expect(item).toBeVisible();
  }

  async proceedToCheckout() {
    await this.page.locator('[data-test="checkout"]').click();
  }
}
