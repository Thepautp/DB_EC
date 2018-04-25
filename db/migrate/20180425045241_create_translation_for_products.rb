class CreateTranslationForProducts < ActiveRecord::Migration[5.1]
  def up
    Product.create_translation_table!({
                                          price: :float,
                                          weight: :float}, {migrate_data: true})
  end

  def down
    Product.drop_translation_table! migrate_data: true
  end
end
