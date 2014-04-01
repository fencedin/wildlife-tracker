class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :name, :string
      t.timestamps
    end
    create_table :sightings do |t|
      t.column :date, :datetime
      t.column :location, :string
      t.timestamps
    end
  end
end
