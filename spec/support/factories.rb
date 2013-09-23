FactoryGirl.define do
  #this creates the ':customer_feedback' factory
  #which corresponds with the customer_feedback model
  factory :customer_feedback do 
    first_name "Bob"
    last_name "Brooks"
    email_address "Bob@gmail.com"
    subject "My humble opinion"
    description "I think you guys rock"
  end
end

# To test FactoryGirl to ensure it's working
# Open rails c in the terminal and 
# type= require './spec/spec_helper.rb'