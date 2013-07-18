class CreateFoodtrucksTable < ActiveRecord::Migration
  def up
    create_table :foodtrucks do |t|
      t.string :name
      t.string :handle
      t.integer :foodtype_id
      t.integer :location_id
      t.timestamps
    end
  end

  def down
    drop_table :foodtrucks
  end
end
