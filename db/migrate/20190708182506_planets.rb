class Planets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :terrain
      t.string :temp_range
      t.string :vegetation
      t.string :animals
      t.string :local_beings
      t.string :backpack
      t.string :img_url
      t.string :planet_img_url
    end
  end
end
