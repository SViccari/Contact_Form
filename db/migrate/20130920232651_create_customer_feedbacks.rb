class CreateCustomerFeedbacks < ActiveRecord::Migration
  def change
    create_table :customer_feedbacks do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :description, null: false
      t.string :subject, null: false
      t.string :email_address, null: false

      t.timestamps
    end
  end
end
