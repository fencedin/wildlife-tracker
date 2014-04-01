class CreateRegion < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :name, :string
      t.timestamps
    end
    add_column :sightings, :region_id, :int
  end
end
