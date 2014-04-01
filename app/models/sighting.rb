class Sighting < ActiveRecord::Base
  belongs_to :species
  validates_presence_of :date
  validates_presence_of :location
end
