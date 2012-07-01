# Given /^I have a forum with name '(.*?)'$/ do |name|
#   Forum.create! :name => name
# end

# Given /^the description for forum '(.*?)' is '(.*?)'$/ do |name, new_description|
#   forum = forum.where(:name => name).first
#   forum.description = new_description
# end

Given /^I am on the home page$/ do
  visit "/"
end

 
Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content text
end


When /^I follow "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

