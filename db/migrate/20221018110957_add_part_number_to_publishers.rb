class AddPartNumberToPublishers < ActiveRecord::Migration[7.0]
  def change
    add_column :publishers, :adress, :string
  end
end
