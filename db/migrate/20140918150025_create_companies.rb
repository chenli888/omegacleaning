class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.timestamps
    end
    add_index :companies, :email, unique: true
    add_index :companies, :username, unique: true
    add_index :companies, :remember_token
  end
end
