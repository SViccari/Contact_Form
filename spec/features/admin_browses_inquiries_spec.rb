require 'spec_helper'

feature "Admin views all inquiries", %Q{
  As an admin
  I want to review contact inquiries
  So that I can respond or take action
} do 

  # Acceptance Criteria
  # * I can see a list of all contact inquiries 

  scenario "admin sees a page title" do 
    visit '/customer_feedbacks'
    expect(page).to have_content "Customer Feedback and Inquiries"
  end

  scenario "admin views all contact inquiries listed on a page" do
      messages = FactoryGirl.create_list(:customer_feedback, 4)
      visit '/customer_feedbacks'
      expect(page).to have_content messages[0].subject
  end
end