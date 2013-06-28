class CreateCureFundProjects < ActiveRecord::Migration
  def change
    create_table :cure_fund_projects do |t|
      t.date :expires_at
      t.string :name

      t.timestamps
    end
  end
end
