# This migration comes from catalogs (originally 20190922015554)
class RemoveNullConstraintFromLabel < ActiveRecord::Migration[6.0]
  def change
    change_column :catalogs_catalogs, :label, :string, null: true
  end
end
