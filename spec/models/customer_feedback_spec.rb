require 'spec_helper'

describe CustomerFeedback do
  it { should have_valid(:first_name).when('Steph','Tim')}
  it { should_not have_valid(:first_name).when(nil,'')}

  it { should have_valid(:last_name).when('Steph','Tim')}
  it { should_not have_valid(:last_name).when(nil,'')}

  it { should have_valid(:email_address).when('Steph@gmail.com')}
  it { should_not have_valid(:email_address).when(nil,'')}

  it { should have_valid(:description).when('some test','foo')}
  it { should_not have_valid(:description).when(nil,'')}

  it { should have_valid(:subject).when('foo','bar')}
  it { should_not have_valid(:subject).when(nil,'')}

  # FactoryGirl.create(:customer_feedback)
  # expect()

end
