Then(/^I should visit "([^"]*)" restaurants page$/) do |email|
  user = User.find_by(email: email)
  current_user = user.id
  visit owners_restaurants_path(current_user)
end

Given(/^the following users exist:$/) do |table|
  table.hashes.each do |user|
    FactoryGirl.create(:user, user)
  end
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
  visit root_path
end

Then(/^I should visit "([^"]*)" admin page$/) do |restaurant|
  restaurant = Restaurant.where(name: restaurant).first
  restaurant_id = restaurant.id
  user_id = restaurant.user_id
  visit user_restaurant_path(user_id, restaurant_id)
end
