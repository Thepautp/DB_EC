class CreateTranslationForOrderStatuses < ActiveRecord::Migration[5.1]
  def up
      OrderStatus.create_translation_table!({name: :string}, {migrate_data: true})
    end
  
    def down
      OrderStatus.drop_translation_table! migrate_data: true
    end
end
