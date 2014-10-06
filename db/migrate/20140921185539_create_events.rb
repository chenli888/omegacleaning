class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :company
      t.datetime :start_time
      t.datetime :end_time
      t.integer :start_hour
      t.integer :end_hour

      t.timestamps
    end
  end
end
