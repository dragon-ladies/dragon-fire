class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class_type
      t.string :race

      t.timestamps
    end
  end
end
