Then /^I should see "([^\"]*)"$/ do |body|
  expect(page).to have_text body
  page.execute_script('browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"passed", "reason": "reason"}}')
end
