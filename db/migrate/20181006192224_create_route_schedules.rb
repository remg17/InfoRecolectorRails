class CreateRouteSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :route_schedules do |t|
      t.belongs_to :week, foreign_key:true
      t.belongs_to :route, foreign_key:true
      t.datetime :timStart
      t.datetime :timEnd

      t.timestamps
    end
  end
end
