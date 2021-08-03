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
    Maximize Browser Window

Search the product
    [Documentation]  This method will search the product
    [Arguments]  ${productName}
    Wait Until Element Is Visible  ${cookiesAcceptButton}  20s
    Click Button  ${cookiesAcceptButton}
    Wait Until Element Is Visible  ${searchBoxField  20s
    Input Text  ${searchBoxField}  ${productName}
    Press Keys  ${searchBoxField}  ENTER

Add product into wishlist
    [Documentation]  This method will add the product into wishlist
    [Arguments]  ${email}  ${password}
     Wait Until Element Is Visible  ${clearPopUP}  20s
     Press Keys  ${clearPopUP}   ESC
     Wait Until Element Is Visible  ${next button}  20s
     Element Should Be Enabled  ${westWeingCCollection}
     Wait Until Element Is Visible  ${productWishListIcon}  20s
     Click Element  ${productWishListIcon}
     Wait Until Element Is Visible  ${switchOverlay}  20s
     Click Button  ${switchOverlay}
     Wait Until Element Is Visible  ${emailField}  20s
     Input Text  ${emailField}  ${email}
     Input Text  ${passWordField}  ${password}
     Click Button  ${submitButton}

Go to wishlist page and delete the product
    [Documentation]  This method will go to my wishlist page and delete the product from wishlist
     Wait Until Element Is Visible  ${myWishListIcon  20s
     Click Element  ${myWishListIcon}
     Wait Until Element Is Visible  ${wishListProductDeleteIcon}  20s
     Click Button  ${wishListProductDeleteIcon}

Verify deleting the product
    [Documentation]  This method verify that product deleted successfully and
...                  wishlist is empty
     Wait Until Element Is Visible  ${wishListCounterIcon}  20s
     Page Should Not Contain Element  ${wishListCounterIcon}

    
Close the browser
    [Documentation]  This method will close the current browser and
...                  it will be use as a tear down method
    Close Browser