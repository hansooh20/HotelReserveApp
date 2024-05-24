class CreateDailyMealStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_meal_statuses do |t|
      t.integer :reservation_id, null: false
      t.date :stay_date, null: false
      t.integer :meal_status, null: false

      t.timestamps
    end
  end
end
