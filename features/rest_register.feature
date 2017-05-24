Feature: As a restaurant owner
  In order to display my restaurant in the system
  I would like to be able to create a restaurant account


  Background:
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |

  Scenario:
    Given I visit the landing page
    Then I should see "Restaurant Registration" link
    And I click on the "Restaurant Registration" link
    Then I should see "Restaurant Registration Form"
    And I fill in field "Restaurant Name" with "Bungalows"
    And I fill in field "address" with "34, Crawford Avenue"
    And I fill in field "city" with "Centurion"
    And I fill in field "state" with "Gauteng"
    And I fill in field "country" with "South Africa"
    And I select "Fast Food" from "rest_category" dropdown
    And I fill in field "E-mail" with "joe@bloggs.com"
    And I fill in field "Password" with "12345678"
    And I fill in field "Password Confirmation" with "12345678"
    Then I should see "Your restaurant has been successfuly registered"
