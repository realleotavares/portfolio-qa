*** Settings ***
Documentation     Keywords for SauceDemo E2E Flow
Library           Browser
Library           String

*** Variables ***
${URL}            https://www.saucedemo.com/

*** Keywords ***
Start SauceDemo Session
    [Documentation]    Opens a new browser and navigates to the SauceDemo homepage.
    New Browser    chromium    headless=true
    New Context
    New Page       ${URL}

Login As Standard User
    [Arguments]    ${username}    ${password}
    [Documentation]    Fills the login form and clicks the login button.
    Fill Text      [data-test="username"]    ${username}
    Fill Text      [data-test="password"]    ${password}
    Click          [data-test="login-button"]

Verify Successful Login
    [Documentation]    Verifies that the user has successfully logged in and is on the Inventory page.
    Get Text       .title    ==    Products

Add Product To Cart
    [Arguments]    ${product_name}
    [Documentation]    Adds a specific product to the cart using its data-test attribute.
    ${formatted_name}=    Convert To Lower Case    ${product_name}
    ${formatted_name}=    Replace String    ${formatted_name}    ${SPACE}    -
    Click          [data-test="add-to-cart-${formatted_name}"]

Verify Cart Badge Count
    [Arguments]    ${expected_count}
    [Documentation]    Verifies that the cart badge shows the expected number of items.
    Get Text       .shopping_cart_badge    ==    ${expected_count}

Navigate To Cart
    [Documentation]    Clicks the cart icon and verifies navigation to the Cart page.
    Click          .shopping_cart_link
    Get Text       .title    ==    Your Cart

Verify Product Is In Cart
    [Arguments]    ${product_name}
    [Documentation]    Checks if the product is visible in the cart items list.
    Wait For Elements State    text="${product_name}"    visible

Finish Session
    [Documentation]    Closes the browser session.
    Close Browser
