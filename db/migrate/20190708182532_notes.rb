class Notes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.text :blog
      t.string :img_url
    end
  end
end
