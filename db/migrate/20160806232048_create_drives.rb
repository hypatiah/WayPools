class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|

      t.integer :user_id, presence: true
      t.string :start_address, presence: true
      t.string :end_address, presence: true
      t.datetime :depart_min, presence: true
      t.datetime :depart_max, presence: true
      t.integer :seats_available, presence: true
      t.integer :tolerance, presence: true
      t.string :description

      t.timestamps null: false
    end
  end
end
