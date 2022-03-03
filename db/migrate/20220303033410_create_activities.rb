class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.integer :duration
      t.integer :category, default: 0, null: false
      t.decimal :distance, precision: 5, scale: 2
      t.integer :difficulty, default: 0
      t.integer :unit

      t.timestamps
    end
  end
end
