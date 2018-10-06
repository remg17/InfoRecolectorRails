class CreateRouteStops < ActiveRecord::Migration[5.0]
  def change
    create_table :route_stops do |t|
      t.belongs_to :stop, foreign_key:true
      t.belongs_to :route, foreign_key:true
      t.integer :order

      t.timestamps
    end
  end
end
