class Reservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :planet_id
      t.string :date_time
      t.string :cost
    end
  end
end
