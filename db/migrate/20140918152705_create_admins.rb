class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.timestamps
    end
    execute("insert into Admins(username, email, password_digest) values(
    'admin',
    'admin@omegacleaners.ca',
    '$2a$10$KvPyG0yK2pF3rqfZCeSJO.gLlm9.mGQglq7V0k5ixJQPGlqaCGWXa');")
  end
end
