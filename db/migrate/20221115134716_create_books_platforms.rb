class CreateBooksPlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :books_platforms do |t|
      t.references :platform, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
