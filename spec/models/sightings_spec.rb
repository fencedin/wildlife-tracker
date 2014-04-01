require 'spec_helper'

describe Sighting do
  it { should belong_to :species }
  it { should validate_presence_of :date }
  it { should validate_presence_of :location }
end
