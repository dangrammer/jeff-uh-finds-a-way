class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :handle
      t.string :password
      t.string :location
      t.string :bio
      t.string :img_url

      t.timestamps
    end
  end
end
