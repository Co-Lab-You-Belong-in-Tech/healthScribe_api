class CreateDrinks < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks do |t|
      t.datetime :date
      t.time :time
      t.text :comment
      t.string :drink_type
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
