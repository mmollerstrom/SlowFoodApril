Then(/^I should see "([^"]*)" link$/) do |link|
    expect(page).to have_link link
end

Then(/^I click on the "([^"]*)" link$/) do |link|
  click_link(link)
end

Given(/^the following user exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end
