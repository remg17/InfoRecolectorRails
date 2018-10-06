class CreateTruckRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :truck_routes do |t|
      t.belongs_to :truck, foreign_key:true
      t.belongs_to :route, foreign_key:true

      t.timestamps
    end
  end
end
