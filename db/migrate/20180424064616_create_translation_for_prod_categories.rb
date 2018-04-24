class CreateTranslationForProdCategories < ActiveRecord::Migration[5.1]
  def up
      ProdCategorie.create_translation_table!({
                                            name: :string}, {migrate_data: true})
  end

  def down
    ProdCategorie.drop_translation_table! migrate_data: true
  end
end
