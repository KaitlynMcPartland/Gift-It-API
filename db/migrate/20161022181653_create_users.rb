class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :house_number
      t.string :street
      t.string :zip
      t.string :city
      t.string :state
      t.string :country_code

      t.timestamps
    end
  end
end
