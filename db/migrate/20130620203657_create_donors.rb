class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :email
      t.decimal :donation_amount
      t.integer :cure_fund_project_id

      t.timestamps
    end
  end
end
