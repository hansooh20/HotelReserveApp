class CreateFeeSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :fee_schedules do |t|
      t.integer :room_id, null: false
      t.integer :plan_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :fee, null: false
      t.boolean :status, null: false

      t.timestamps
    end
  end
end
