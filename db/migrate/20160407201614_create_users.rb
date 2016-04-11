class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :forum_title, default: "New User"
      t.string :personal_url
      t.text :description
      t.integer :post_count, default: 0
      t.string :user_location
      t.boolean :admin?, default: false
      t.string :email, unique: true
      t.string :password_digest


      t.timestamps null: false
    end
  end
end
