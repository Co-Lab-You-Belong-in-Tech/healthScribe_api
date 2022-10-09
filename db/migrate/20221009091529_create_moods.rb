class CreateMoods < ActiveRecord::Migration[7.0]
  def change
    create_table :moods do |t|
      t.datetime :time
      t.time :time
      t.string :mood
      t.text :comment

      t.timestamps
    end
  end
end
