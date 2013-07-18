class CreateFoodTypeTable < ActiveRecord::Migration
  def up
    create_table :foodtypes do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :foodtypes
  end
end
