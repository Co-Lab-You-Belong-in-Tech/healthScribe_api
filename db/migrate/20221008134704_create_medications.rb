class CreateMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :medications do |t|
      t.datetime :date
      t.time :time
      t.text :comment
      t.string :medication_type

      t.timestamps
    end
  end
end
