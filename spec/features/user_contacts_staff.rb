require 'spec_helper'

feature "user contacts DogHub", %Q{
  As a site visitor
  I want to contact DogHub staff
  So that I can tell them how awesome they are
} do 

  # Acceptance Criteria
  # * I must specify a first name
  # * I must specify a last name
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description

  scenario 'specifies valid information, contacts DogHub' do 
    visit '/customer_feedbacks/new'
    fill_in "First name", with: 'Steph'
    fill_in "Last name", with: 'Viccari'
    fill_in "Email", with: 'steph@gmail.com'
    fill_in 'Subject', with: 'Hola'
    fill_in 'Description', with: 'You Rock'
    expect(page).to have_content('You\'re message was successfully sent')
  end
end