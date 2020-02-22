class CreateBeerHops < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_hops do |t|
      t.references :beer, foreign_key: true
      t.references :hop, foreign_key: true

      t.timestamps
    end
  end
end
