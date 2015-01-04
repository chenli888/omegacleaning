class CreateEventparents < ActiveRecord::Migration
  def change
    create_table :eventparents do |t|
      t.belongs_to :company
      t.datetime :first_date
      t.datetime :last_date
      t.integer :start_hour
      t.integer :end_hour
      t.string :title
      
      t.timestamps
    end
  end
end
