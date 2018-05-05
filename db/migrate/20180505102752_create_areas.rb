class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :location
      t.string :latitude
      t.string :longtitude

      t.timestamps
    end
  end
end
