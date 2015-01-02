class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :mid, null: false
      t.string :mname, null: false
      t.text :color, null: false
      t.integer :year, null: false
      t.integer :mileage, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
