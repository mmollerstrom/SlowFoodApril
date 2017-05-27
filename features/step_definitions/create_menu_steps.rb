Then(/^I should visit "([^"]*)" restaurant page$/) do |email|
  user = User.find_by(email: email)
  current_user = user.id
  visit user_restaurants_path(current_user)
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
