class Sighting < ActiveRecord::Base
  belongs_to :species
  validates_presence_of :date
  validates_presence_of :location

  def self.between(start_date, end_date)
    Sighting.where(date: (start_date..end_date))
  end
end
