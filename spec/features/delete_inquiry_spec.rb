require 'spec_helper'

feature "Admin deletes an inquiry", %Q{
  As an admin
  I want to delete an inquiry
  So that I can remove spam or 
  other undesirable inquiries
  } do 

  # Acceptance Criteria
  # * I can remove an item from the 
  # listing of contact inquiries

  scenario "admin deletes an inquiry" do
    message = FactoryGirl.create(:customer_feedback)
    visit customer_feedbacks_path
    click_link 'Destroy'
    expect(page).to_not have_content(message.subject)
    # expect(page).to have_content "Are you sure?"
  end 
end