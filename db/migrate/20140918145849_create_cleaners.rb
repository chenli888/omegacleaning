class CreateCleaners < ActiveRecord::Migration
  def change
    create_table :cleaners do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.string :remember_token
      t.timestamps
    end
    add_index :cleaners, :email, unique: true
    add_index :cleaners, :username, unique: true
    add_index :cleaners, :remember_token
  end
end
