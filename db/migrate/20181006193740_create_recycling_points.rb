class CreateRecyclingPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :recycling_points do |t|
      t.string :name
      t.string :location
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
