class CreateAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.integer :external_id
      t.integer :hero_id
      t.string :name
      t.text :description
      t.boolean :is_ultimate

      t.timestamps
    end
  end
end
