import { test, expect } from '@playwright/test';

test.describe('The Internet - UI Behavior Assertions', () => {
  
  test('should assert dynamic loading element appears gracefully (Bug Regression fix)', async ({ page }) => {
    // Navigate to a safe, authorized sandbox for practicing dynamic loads
    await page.goto('https://the-internet.herokuapp.com/dynamic_loading/1');
    
    // Explicitly click the start button
    await page.locator('#start button').click();
    
    // 1. Assert the spinner is immediately visible
    const loading = page.locator('#loading');
    await expect(loading).toBeVisible();
    
    // 2. Wait and assert the final text appears
    // We use a custom timeout because this element takes ~5s to render
    const finishText = page.locator('#finish h4');
    await expect(finishText).toBeVisible({ timeout: 10000 });
    await expect(finishText).toHaveText('Hello World!');
    
    // 3. Verify the spinner has gracefully disappeared
    await expect(loading).toBeHidden();
  });
});
