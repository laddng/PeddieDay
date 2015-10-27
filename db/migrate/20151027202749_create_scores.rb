class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :team
      t.integer :blairScore
      t.integer :peddieScore
      t.boolean :active

      t.timestamps null: false
    end
  end
end
