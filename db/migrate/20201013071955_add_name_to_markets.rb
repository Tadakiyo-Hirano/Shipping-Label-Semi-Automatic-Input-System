class AddNameToMarkets < ActiveRecord::Migration[6.0]
  def change
    add_column :markets, :name, :string, default: "", null: false
  end
end
