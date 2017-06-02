Feature: As a restaurant owner
  In order to display my dishes to visitors
  I would like to create dishes

  Background:
    Given "o.dania@aol.com" exists and has 2 restaurants belonging to 2 restaurant categories
    And I am logged in as "o.dania@aol.com"
    And the following menus exist
      | name                    | restaurant          |
      | Sushi Menu              | Goteborg Wok Sushi  |
      | Burgers                 | McDonalds           |
      | Breakfast menu          | McDonalds           |
      | Orchid Bistro           | McDonalds           |

  Scenario: Add Dish to Menu
    Given I click on link "View My Restaurant Page"
    And I visit "o.dania@aol.com" restaurants page
    And I click on link "McDonalds"
    And I click on link "Add Dish to Orchid Bistro Menu"
    And I fill in field "Name" with "McFeast"
    And I fill in field "Description" with "Tasty Big Burger"
    And I fill in field "Price" with "20.50"
    And I click on button "Add Dish"
    Then I should see "Dish added succesfully"
