*** Settings ***
Documentation     This file is use to implement all the custom keywords and
...               call this keyword from any test case

Library  SeleniumLibrary
Resource  Variables.robot

*** Keywords ***
Open the website
    [Documentation]  This method will open the browser and maximize the browser
    [Arguments]  ${BROWSER}
    Open Browser      ${URL}[0]    ${BROWSER}
    Sleep  5s
    Maximize Browser Window

Search the product
    [Documentation]  This method will search the product
    [Arguments]  ${productName}
    Sleep  5s
    Click Button  ${cookiesAcceptButton}
    Sleep  10s
    Input Text  ${searchBoxField}  ${productName}
    Press Keys  ${searchBoxField}  ENTER

Add product into wishlist
    [Documentation]  This method will add the product into wishlist
    [Arguments]  ${email}  ${password}
    Sleep  10s
    Press Keys  ${clearPopUP}   ESC
    Sleep  5s
    Element Should Be Enabled  //span[normalize-space()='Westwing Collection']
    Sleep  10s
    Click Element  ${productWishListIcon}
    Sleep  8s
    Click Button  ${switchOverlay}
    Sleep  5s
    Input Text  ${emailField}  ${email}
    Input Text  ${passWordField}  ${password}
    Click Button  ${submitButton}

Go to wishlist page and delete the product
    [Documentation]  This method will go to my wishlist page and delete the product from wishlist
    Sleep  10s
    Click Element  ${myWishListIcon}
    Sleep  15s
    Click Button  ${wishListProductDeleteIcon}

Verify deleting the product
    [Documentation]  This method verify that product deleted successfully and
...                  wishlist is empty
    Sleep  10s
    Page Should Not Contain Element  ${wishListCounterIcon}

    
Close the browser
    [Documentation]  This method will close the current browser and
...                  it will be use as a tear down method
    Close Browser