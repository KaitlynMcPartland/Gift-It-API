class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :charity
      t.integer :amount
      t.string :team
      t.integer :user_id
      t.string :icon

      t.timestamps
    end
  end
end
