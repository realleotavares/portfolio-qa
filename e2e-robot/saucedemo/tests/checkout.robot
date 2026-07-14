*** Settings ***
Documentation     SauceDemo E2E Login and Checkout Flow using advanced BDD keywords
Resource          ../resources/keywords.resource
Library           String

Test Setup        Start SauceDemo Session
Test Teardown     Finish Session

*** Test Cases ***
Successful Login and Add To Cart
    [Documentation]    Verifies that a standard user can login and add an item to the cart successfully.
    
    # 1. Authenticaton
    Login As Standard User    standard_user    secret_sauce
    Verify Successful Login
    
    # 2. Inventory Selection
    Add Product To Cart    Sauce Labs Backpack
    Verify Cart Badge Count    1
    
    # 3. Cart Verification
    Navigate To Cart
    Verify Product Is In Cart    Sauce Labs Backpack
