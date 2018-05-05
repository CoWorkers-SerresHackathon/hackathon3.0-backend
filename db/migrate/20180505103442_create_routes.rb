class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :start_point
      t.string :destination
      t.string :distance

      t.timestamps
    end
  end
end
