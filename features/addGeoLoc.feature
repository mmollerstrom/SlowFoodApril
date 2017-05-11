Feature: As a Restaurant owner
In order to market my food to the right demographic
I would like the system to know about my location

Background:
  Given the following restaurants exist
    | name                | address           | email               | phone         | city        | state           | country  |
    | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Gothenbourg | Västra Götaland | Sweden   |

Scenario:
Given my full address is "Östrahamngatan 5 Gothenbourg Västra Götaland Sweden"
Then I would like the system to know my location as "57.708870" lat and "11.974560" long
