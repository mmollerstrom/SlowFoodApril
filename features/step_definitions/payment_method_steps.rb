Given(/^I fill out checkout form with email "([^"]*)" and cc no "([^"]*)" and expdate with "([^"]*)" and cvc "([^"]*)" and I click submit$/) do |email, ccno, expdate, cvc|
  sleep(2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
  within_frame @stripe_iframe do
    fill_in 'Email', with: 'random@morerandom.com'
    fill_in 'Card number', with: '4242 4242 4242 4242'
    fill_in 'CVC', with: '123'
    fill_in 'cc-exp', with: '12/2021'
    end
end
