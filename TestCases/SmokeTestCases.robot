*** Settings ***

Documentation  This suites search the product,add the product to
...            wishlist and finally delete the product from wishlist

Library   SeleniumLibrary
Resource  ../Resources/keyword.robot
Test Setup  Open the website  chrome
Test Teardown   Close the browser

*** Test Cases ***
TC-01-Search product and add the product into wishlist
    [Documentation]   This test case will searh product,login the site,add the product
...                   in wishlist and finally delete the product from wishlist
    [Tags]  smoke
    Search the product   möbel
    Add product into wishlist  alirajujnu2@gmail.com  pP@01921666
    Go to wishlist page and delete the product
    Verify deleting the product