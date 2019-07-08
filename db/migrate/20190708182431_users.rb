class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :age 
      t.string :img_url
      t.string :username
      t.string :password_digest
    end
  end
end
