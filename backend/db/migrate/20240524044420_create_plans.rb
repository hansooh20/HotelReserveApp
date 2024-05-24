class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.integer :room_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :availability, null: false

      t.timestamps
    end
  end
end
