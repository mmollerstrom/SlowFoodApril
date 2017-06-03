# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





rest_cats = RestCategory.create([{ name: 'Sushi' }, { name: 'Fast food' }])
restaurants = Restaurant.create([{ name: 'Backyard burger',
                                address: '123 Main St',
                                city: 'Dallas', province: 'Texas',
                                country: 'USA',
                                rest_category: rest_cats.last },
                                { name: 'Sushi Palace',
                                address: '123 Storgatan',
                                city: 'Stockholm', province: 'Stockholm',
                                country: 'Sweden',
                                rest_category: rest_cats.first},
                                { name: 'Cool Food',
                                address: '321 Main St',
                                city: 'Pretoria', province: 'Gauteng',
                                country: 'South Africa',
                                rest_category: rest_cats.last}])
menus = Menu.create([{ name: 'Breakfast', restaurant: restaurants.first },
                     { name: 'Breakfast', restaurant: restaurants.last },
                     { name: 'Sushi menu', restaurant: restaurants[1] },
                     { name: 'Dinner', restaurant: restaurants.first },
                     { name: 'Burgers', restaurant: restaurants.last }])







Given the following restaurant categories exist
  | name      |
  | Sushi     |
  | Fast food |

And the following users exist:
  | email           | password | password_confirmation |restaurant_owner  |
  | #{user_email}   | 12345678 | 12345678              |true              |

And the following restaurants exist
  | name                | address           | email               | phone         | rest_category | description             | owner           |
  | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! | #{user_email}   |
  | McDonalds           | Big Mac Drive     |                     |               | Fast food     |                         | #{user_email}   |
}


Given the following menus exist
  | name                    | restaurant          |
  | Sushi Menu              | Goteborg Wok Sushi  |
  | Burgers                 | McDonalds           |
  | Breakfast menu          | McDonalds           |
  | Sushi Menu              | McDonalds           |

Given the following dishes exist
  | name                    | description                             | price      | menu                      | restaurant           |
  | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
  | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | McDonalds      |
  | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | McDonalds      |
  | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | McDonalds      |
