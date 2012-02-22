
When /^I open "([^"]*)"$/ do |url|
  visit(url)
end

Given /^I am on the root page$/ do
  visit("http://localhost:3000")
end

When /^I press the "([^"]*)" button$/ do |button|
  click_on(button)
end

Then /^I should see "([^"]*)"$/ do |result|
  page.has_content?(result).should be true
end

When /^I type "([^"]*)" to the time field$/ do |time|
  fill_in('time', :with => time)
end