class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :phone
      t.string :email
      t.string :state
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
