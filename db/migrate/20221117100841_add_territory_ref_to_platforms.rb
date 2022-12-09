class AddTerritoryRefToPlatforms < ActiveRecord::Migration[7.0]
  def change
    add_reference :platforms, :territory, null: false, foreign_key: true
  end
end
