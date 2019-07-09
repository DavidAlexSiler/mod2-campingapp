class Notes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.belongs_to :user
      t.text :blog
      t.string :img_url
      t.string :title
    end
  end
end
