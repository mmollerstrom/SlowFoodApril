Then(/^I should see "([^"]*)" link$/) do |link|
    expect(page).to have_link link
end

Then(/^I click on the "([^"]*)" link$/) do |link|
  click_link(link)
end

Then(/^I select "([^"]*)" from "([^"]*)" dropdown$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end
