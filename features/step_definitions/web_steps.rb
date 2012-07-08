When /^I visit the site$/ do
  visit root_path
end

When /^(?:|I )click "(.+)"$/ do |link|
  click_link link
end

Then /^(?:|I )should see paragraphs$/ do
  page.should have_selector('p')
end

Then /^(?:|I )should see "(.+)"$/ do |text|
  page.should have_content(text)
end

Then /^(?:|I )should see (?:a|an) "(.+)" section$/ do |section|
  page.should have_content(section)
end

Then /show me the page/ do
  save_and_open_page
end
