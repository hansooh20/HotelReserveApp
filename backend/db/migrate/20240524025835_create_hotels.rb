class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|

      t.string :name, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.time :check_in_time, null: false
      t.time :check_out_time, null: false
      t.string :parking, null: false

      t.timestamps
    end
  end
end
