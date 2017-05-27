Feature: As a restaurant owner
  In order to categorise the dishes
  I would like to be able to create my own menus

    Background:
      Given the following restaurant categories exist
        | name      |
        | Sushi     |
        | Fast food |

      And the following users exist:
        | email           | password | password_confirmation |restaurant_owner  |
        | o.dania@aol.com | 12345678 | 12345678              |true              |

      And the following restaurants exist
        | name                | address           | email               | phone         | rest_category | description             | owner           |
        | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! | o.dania@aol.com |
        | McDonalds           | Big Mac Drive     |                     |               | Fast food     |                         | o.dania@aol.com |

      And I am logged in as "o.dania@aol.com"

    Scenario: Add Menu on Restaurant Owner Page
      Given I click on link "View My Restaurant Page"
      Then I should visit "o.dania@aol.com" restaurants page
      And I click on link "McDonalds"
      Then I should visit "McDonalds" admin page
      And I click on link "Create Menu"
      Then I should see "New Menu Form"
      And I fill in field "Menu Name" with "Orchid Bistro"
      And I click on button "Create"
      Then I should see "Menu added"
