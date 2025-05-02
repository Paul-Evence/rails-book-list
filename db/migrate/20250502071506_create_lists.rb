class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.float :score_1
      t.float :score_2
      t.float :score_3
      t.string :map
      t.string :recomendation

      t.timestamps
    end
  end
end
