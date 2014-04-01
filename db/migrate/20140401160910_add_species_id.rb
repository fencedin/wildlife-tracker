class AddSpeciesId < ActiveRecord::Migration
  def change
    add_column :sightings, :species_id, :int
  end
end
