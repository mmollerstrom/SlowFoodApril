Feature: Add dishes to menu
  As a visitor
  In order to decide from various dishes from a restaurant
  I would like to see many dishes in the restaurant´s menu

  Background:
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |

    Given the following restaurants exist
      | name                | address           | email               | phone         | rest_category | description             |
      | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! |
      | Backyard Burger     | Burger Drive      |                     |               | Fast food     |                         |

    Given the following menus exist
      | name                    | restaurant          |
      | Sushi Menu              | Goteborg Wok Sushi  |
      | Burgers                 | Backyard Burger     |
      | Breakfast menu          | Backyard Burger     |
      | Sushi Menu              | Backyard Burger     |

    Given the following dishes exist
      | name                    | description                             | price      | menu                      | restaurant           |
      | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
      | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | Backyard Burger      |
      | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | Backyard Burger      |
      | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | Backyard Burger      |

  Scenario: Go to the restaurant's page
    Given I visit the landing page
    And I click on link "Backyard Burger"
    And I click on link "Full menu"
    Then I should see "Giant Burger"
    And I should see "A burger with cheese and lettuce"
    And I should see "Quarter Pounder Cheese"
    And I should see "150"
    And I should see "2000"
    And I should not see "7 piece sushi"
