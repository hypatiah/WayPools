class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :drive_id, presence: true
      t.integer :ride_id, presence: true

      t.timestamps null: false
    end
  end
end
