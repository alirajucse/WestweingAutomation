*** Settings ***
Documentation     This file will use to declare all the variables and
...               reuse the variables in any class

Library  SeleniumLibrary
Resource  Variables.robot

*** Variables ***
@{url}  https://www.westwingnow.de
${cookiesAcceptButton}  //button[normalize-space()='Cookies akzeptieren']
${searchBoxField}  //input[@placeholder='Produktsuche...']
${clearPopUP}  //body/div/div/div/div/div/div/header/div/div[1]/a[1]
${switchOverlay}  //button[normalize-space()='Hier einloggen']
${productWishListIcon}  //div//div//div//div//div//div//div//div[1]//a[1]//div[1]//div[2]//div[2]//div[1]//*[local-name()='svg']
${emailField}  //input[@placeholder='E-Mail']
${passWordField}  //input[@placeholder='Passwort']
${submitButton}  //button[normalize-space()='Anmelden']
${myWishListIcon}  //body/div/div/div/div/div/div/header/div/div[@data-testid='wishlist-bubble']/div/span[1]//*[local-name()='svg']
${wishListProductDeleteIcon}  //body/div[@id='pageContainer']/div[@id='page']/div[@id='content']/div/div[@id='wishlistRoot']/div/div/div/ul/li/button[1]
${wishListCounterIcon}  //span[@data-testid='wishlist-counter']
${westWeingCCollection}  //span[normalize-space()='Westwing Collection']