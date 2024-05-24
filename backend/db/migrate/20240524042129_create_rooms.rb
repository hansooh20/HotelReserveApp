class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :hotel_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :size, null: false
      t.integer :room_grade, null: false
      t.boolean :availability, null: false

      t.timestamps
    end
  end
end
