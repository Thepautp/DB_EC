class CreateTranslationForProdTypes < ActiveRecord::Migration[5.1]
  def up
    ProdType.create_translation_table!({
                                          name: :string}, {migrate_data: true})
  end

  def down
    ProdType.drop_translation_table! migrate_data: true
  end
end
