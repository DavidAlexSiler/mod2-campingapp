class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :planet_id
      t.text :planet_review
      t.string :img_url
      t.string :rating
    end
  end
end
