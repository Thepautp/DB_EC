class DropCatTypeMapping < ActiveRecord::Migration[5.1]
  def up
    drop_table :cat_type_mappings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
  
end
