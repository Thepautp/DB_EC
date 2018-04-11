class CreateFukens < ActiveRecord::Migration[5.1]
  def change
    create_table :fukens do |t|
      t.string :name

      t.timestamps
    end
  end
end
