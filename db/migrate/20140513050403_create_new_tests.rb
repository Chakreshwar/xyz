class CreateNewTests < ActiveRecord::Migration
  def change
    create_table :new_tests do |t|
      t.string :email

      t.timestamps
    end
  end
end
