class CustomerFeedback < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :description
  validates_presence_of :subject
  validates_presence_of :email_address

  validates_format_of :email_address,
    with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
end
