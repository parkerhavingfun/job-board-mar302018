class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.text :title
      t.text :overview
      t.text :location
      t.boolean :remote
      t.text :category
      t.text :experience_level

      t.timestamps
    end
  end
end
