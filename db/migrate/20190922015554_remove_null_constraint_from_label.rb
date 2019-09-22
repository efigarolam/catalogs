class RemoveNullConstraintFromLabel < ActiveRecord::Migration[6.0]
  def change
    change_column :catalogs_catalogs, :label, :string, null: true
  end
end
