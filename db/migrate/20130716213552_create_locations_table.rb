class CreateLocationsTable < ActiveRecord::Migration
  def up
    create_table :locations do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :location
  end
end
