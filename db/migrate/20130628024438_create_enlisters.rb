class CreateEnlisters < ActiveRecord::Migration
  def change
    create_table :enlisters do |t|
      t.string :email

      t.timestamps
    end
  end
end
