When /^I visit the site$/ do
  visit root_path
end

Then /^I should see (.+)$/ do |text|
  page.should have_content(text)
end
