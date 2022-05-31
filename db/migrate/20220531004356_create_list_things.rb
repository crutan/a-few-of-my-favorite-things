class CreateListThings < ActiveRecord::Migration[7.0]
  def change
    create_table :list_things do |t|
      t.references :list, null: false, foreign_key: true
      t.references :thing, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
