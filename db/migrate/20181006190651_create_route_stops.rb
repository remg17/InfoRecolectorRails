class CreateRouteStops < ActiveRecord::Migration[5.0]
  def change
    create_table :route_stops do |t|
      t.integer :order

      t.timestamps
    end
  end
end
