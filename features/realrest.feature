Feature: As a system owner
  In order to display real data to my visitors and for users to start ordering via phone or email
  I would like to have real restaurant info in the system

Background:
  Given the following restaurants exist
    | name                | street            | email               | phone         | city        | state           | country  |
    | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Gothenbourg | Västra Götaland | Sweden   |


Scenario:
  Given I visit the landing page
  Then I should see Restaurant "Goteborg Wok Sushi"
  And I should see "street: Östrahamngatan 5"
  And I should see "email: goteborgwok@live.se"
  And I should see "phone: 031-13 51 52"
  And I should see "city: Gothenbourg"
  And I should see "state: västra götalands län"
  And I should see "country: Sweden"
