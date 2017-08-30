class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :uid
      t.string :email
      t.string :role
      t.string :controller
      t.string :action
      t.text :params
      t.datetime :datetime
      t.timestamps
    end
  end
end
