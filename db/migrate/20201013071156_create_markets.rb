class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.string :code, default: "", null: false

      t.timestamps
    end
  end
end
