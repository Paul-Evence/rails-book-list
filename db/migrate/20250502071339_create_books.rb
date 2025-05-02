class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :teaser
      t.string :cover_url
      t.date :published
      t.string :genre
      t.string :summary
      t.float :density
      t.float :difficulty
      t.float :popularity
      t.float :originality
      t.float :GCI_score
      t.string :first_page

      t.timestamps
    end
  end
end
