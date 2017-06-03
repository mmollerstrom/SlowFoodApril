Feature: payment method
  As a User
  In order to complete my purchase
  I would like to be able to pay

  Scenario: place order on checkout page

    Given "benji@teabags.com" exists and has 2 restaurants belonging to 2 restaurant categories

    And the following menus exist
      | name                    | restaurant          |
      | Sushi Menu              | Goteborg Wok Sushi  |
      | Burgers                 | McDonalds           |
      | Breakfast menu          | McDonalds           |
      | Sushi Menu              | McDonalds           |

    And the following dishes exist
      | name                    | description                             | price      | menu                      | restaurant           |
      | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
      | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | McDonalds            |
      | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | McDonalds            |
      | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | McDonalds            |

    And the following user credentials exist
      | email               | password       | password_confirmation | restaurant_owner        |
      | joe@doe.com         | 12345678       | 12345678              | false                   |

    Given I visit the landing page
    And I click on link "McDonalds"
    And I click on link "Full menu"
    And I click on link "Add Giant Burger to cart"
    And I click on link "Add Coffe to cart"
    And I visit the landing page
    And I click on link "Cart"
    And I click on link "Pay order"
    Then I should see "Please login to place order"

    Given I am logged in as "joe@doe.com"
    And I click on link "Cart"
    And I click on link "Pay order"
    And I fill out checkout form with email "joe@doe.com" and cc no "4242424242424242" and expdate with "07/33" and cvc "999" and I click submit
    Then I should see "Thank you for your purchase"
