Given(/^I fill out checkout form with email "([^"]*)" and cc no "([^"]*)" and expdate with "([^"]*)" and cvc "([^"]*)" and I click submit$/) do |email, ccno, expdate, cvc|
  stripe_iframe = page.driver.window_handles.last
    page.within_window stripe_iframe do
      fill_in "email", with: email
      fill_in "Card Number", with: ccno
      fill_in "MM / YY", with: expdate
      fill_in "CVC", with: cvc
    end
end
