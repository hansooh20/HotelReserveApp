class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :member_id, null: false
      t.integer :employee_id, null: false
      t.integer :plan_id, null: false
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.date :check_in_date, null: false
      t.date :check_out_date, null: false
      t.integer :guests_count, null: false
      t.integer :total_amount, null: false
      t.integer :payment_method, null: false
      t.time :check_in_time, null: false
      t.time :check_out_time, null: false
      t.boolean :cancel_status, null: false, default: false

      t.timestamps
    end
  end
end
