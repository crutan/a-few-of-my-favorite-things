class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :canonical
      t.boolean :purchasable
      t.string :canonical_source
      t.string :purchase_source

      t.timestamps
    end
  end
end
