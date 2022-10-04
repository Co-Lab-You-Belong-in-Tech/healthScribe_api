class CreateDiseases < ActiveRecord::Migration[7.0]
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :description
      t.text :treatment

      t.timestamps
    end
  end
end
