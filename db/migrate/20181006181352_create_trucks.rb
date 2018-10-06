class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :licensePlate

      t.timestamps
    end
  end
end
