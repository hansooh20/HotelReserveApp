class CreateStayDateDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :stay_date_details do |t|
      t.integer :reservation_id, null: false
      t.integer :room_id, null: false
      t.date :stay_date, null: false

      t.timestamps
    end
  end
end
