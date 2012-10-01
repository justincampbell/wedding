Given /^I am (\w+) (\w+) from (\d+)$/ do |first_name, last_name, zip_code|
  Guest.create party: Party.find_or_create_by_name(last_name),
    first_name: first_name,
    last_name: last_name,
    zip_code: zip_code
end

When /^I visit the site$/ do
  visit root_path
end

When /^(?:|I )click "(.+)"$/ do |link|
  click_link link
end

When /^(?:|I )sign in (?:as|with) (\w+)\s(\w+) from (\d+)$/ do |first_name, last_name, zip_code|
  fill_in "First name", with: first_name
  fill_in "Last name", with: last_name
  fill_in "Zip code", with: zip_code

  click_button "Sign in"
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

Then /^(?:|I )should see images with links$/ do
  within 'a[target=_blank]' do
    page.should have_selector 'img'
  end
end

Then /show me the page/ do
  save_and_open_page
end
