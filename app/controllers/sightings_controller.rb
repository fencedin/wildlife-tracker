class SightingsController < ApplicationController

  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    render 'sightings/new.html.erb'
  end

  def create
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new(:date =>params[:date],
                             :location => params[:location])
    if @sighting.save
      #flash[:alert] = "Sighting Registered!"
      @species_all = Species.all
      @species = Species.new
      render 'species/index.html.erb'
    else
      render 'sightings/new.html.erb'
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render 'sightings/edit.html.erb'
  end

  def update
    @sighting = Sighting.find(params[:id])
    @sighting.update(:date => params[:date],
                     :location => params[:location])
    if @sighting.save
      @species = @sighting.species
      render 'species/show.html.erb'
    else
      render 'sightings/edit.html.erb'
    end
  end

  def destroy
    @species_all = Species.all
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    @species = @sighting.species
    render 'species/show.html.erb'
  end
end
