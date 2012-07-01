# This will guess the User class
FactoryGirl.define do
  factory :forum do
    name 'Awesomezone'
    description 'A forum is a discussion space. This forum is an AWESOME discussion space.'
    # first_name "John"
    # last_name  "Doe"
    # admin false
  end

  # This will use the User class (Admin would have been guessed)
  # factory :stack do
  #   name 'Stackalicious'
  #   description 'A stack is a Q&A area. This stack is AWESOME.'
  #   # first_name "Admin"
  #   # last_name  "User"
  #   # admin      true
  # end
end
