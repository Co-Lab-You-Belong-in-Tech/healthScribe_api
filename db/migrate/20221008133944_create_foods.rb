class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.datetime :date
      t.time :time
      t.text :comment
      t.string :food_type

      t.timestamps
    end
  end
end
