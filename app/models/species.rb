class Species < ActiveRecord::Base
  has_many :sightings
  validates :name, :uniqueness => :name,
                   :presence => true
end
