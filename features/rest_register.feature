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
    And I fill in field "Address" with "34, Crawford Avenue"
    And I fill in field "City" with "Centurion"
    And I fill in field "State" with "Gauteng"
    And I fill in field "Country" with "South Africa"
    And I choose "Fast food" from drop-down "Restaurant Category"
    Then I should see "Your restaurant has been successfuly registered"
