# This migration comes from catalogs (originally 20190919172839)
class CreateCatalogsCatalogs < ActiveRecord::Migration[6.0]
  def change
    create_table :catalogs_catalogs do |t|
      t.string :model, null: false
      t.string :field, null: false
      t.string :label, null: false
      t.string :value, null: false

      t.timestamps
    end
  end
end
