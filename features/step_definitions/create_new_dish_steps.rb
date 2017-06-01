Given(/^"([^"]*)" is a menu in restaurant "([^"]*)"$/) do |menu_name, owner_restaurant|
  # @restaurant = Restaurant.where(name: owner_restaurant).first
  # restaurant_id = @restaurant.id
  # new_menu =  {name: menu_name, restaurant_id: restaurant_id}
  # menu = FactoryGirl.create(:menu, new_menu )
end

Then(/^I should see menu "([^"]*)"$/) do |menu|
  expect(page).to have_content menu
end
