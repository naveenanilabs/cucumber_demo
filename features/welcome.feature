Feature: Liscio Login

In order to Login in Homepage we have to enter login details

Scenario: Login On Liscio Homepage without email

Given I am on the Liscio homepage

When enter blank details for Login

Then error email shown

Scenario: Login On Liscio Homepage with valid email

Given I am on the Liscio homepage

When enter details for login

Then compute the count

#Scenario: Create task and count increased notification count

#Given I am on the Liscio homepage 

#When User enter Contact's login details

#Then compute the count notification count on employee should increase


