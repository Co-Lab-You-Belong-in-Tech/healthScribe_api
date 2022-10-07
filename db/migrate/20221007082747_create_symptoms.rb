class CreateSymptoms < ActiveRecord::Migration[7.0]
  def change
    create_table :symptoms do |t|
      t.string :name
      t.string :description
      t.string :treatment
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
