class AddPublisherIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publisher_id, :integer
    add_index :books, :publisher_id
  end
end
