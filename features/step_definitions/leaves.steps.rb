When /^I have a forum named "(.*?)" described "(.*?)"$/ do |name, desc|
  Forum.create :name => name, :description => desc
end

Given /^I am on the home page$/ do
  visit "/"
end
 
Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end


# When /^I follow "(.*?)"$/ do |arg1|
#   pending # express the regexp above with the code you wish you had
# end

