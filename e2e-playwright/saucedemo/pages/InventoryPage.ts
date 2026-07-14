import { Page, expect } from '@playwright/test';

export class InventoryPage {
  readonly page: Page;

  constructor(page: Page) {
    this.page = page;
  }

  async assertIsOnInventoryPage() {
    await expect(this.page.locator('.title')).toHaveText('Products');
  }

  async addToCart(productName: string) {
    // Convert product name to the data-test format: "Sauce Labs Backpack" -> "add-to-cart-sauce-labs-backpack"
    const formattedName = productName.toLowerCase().replace(/ /g, '-');
    await this.page.locator(`[data-test="add-to-cart-${formattedName}"]`).click();
  }

  async assertCartBadgeCount(expectedCount: string) {
    const badge = this.page.locator('.shopping_cart_badge');
    await expect(badge).toHaveText(expectedCount);
  }

  async goToCart() {
    await this.page.locator('.shopping_cart_link').click();
  }
}
