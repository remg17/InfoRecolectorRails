class CreateRouteSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :route_schedules do |t|
      t.datetime :timStart
      t.datetime :timEnd

      t.timestamps
    end
  end
end
