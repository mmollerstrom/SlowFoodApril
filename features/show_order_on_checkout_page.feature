Feature: Show order on checkout page
  As a user
  In order to see what I am ordering
  I would like to see a summary of my order on the checkout page

  Background:
    Given there are dishes in my cart

  Scenario: View order on checkout page
    Given I visit the landing page
    And I click on link "Cart"
    Then I should see "My Cart Items"
    And I should see "Giant Burger"
    And I should see "150"
    And I should see "Coffe"
    And I should see "2500"
    And I click on link "Checkout now"
    Then I should see "Checkout"
    And I should see "Giant Burger"
    And I should see "150"
    And I should see "Coffe"
    And I should see "2500"
