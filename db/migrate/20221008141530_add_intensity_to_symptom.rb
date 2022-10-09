class AddIntensityToSymptom < ActiveRecord::Migration[7.0]
  def change
    add_column :symptoms, :intensity, :integer, default: 0
  end
end
