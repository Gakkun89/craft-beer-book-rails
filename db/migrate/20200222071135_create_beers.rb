class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.decimal :abv
      t.string :style
      t.string :notes
      t.decimal :uscore
      t.integer :bascore

      t.timestamps
    end
  end
end
