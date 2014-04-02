require 'spec_helper'

describe Sighting do
  it { should belong_to :species }
  it { should validate_presence_of :date }
  it { should validate_presence_of :location }

  describe '.between' do
    it 'should grab sightings between 2 dates' do
      sighting1 = Sighting.create(date: '09-06-2014')
      sighting2 = Sighting.create(date: '09-12-2014')
      sighting3 = Sighting.create(date: '2014-04-29 12:12:00')
      Sighting.between('2014-04-08 12:12:00', '2014-04-15 12:12:00').size.should eq 2
    end
  end

end
