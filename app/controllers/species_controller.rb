class SpeciesController < ApplicationController
  def index
    @species_all = Species.all
    @species = Species.new
    render 'species/index.html.erb'
  end

  def create
    @species_all = Species.all
    @species = Species.new(:name =>params[:name])
    if @species.save
      render 'species/index.html.erb'
    else
      render 'species/index.html.erb'
    end
  end

  def edit
    @species = Species.find(params[:id])
    render 'species/edit.html.erb'
  end

  def update
    @species_all = Species.all
    @species = Species.find(params[:id])
    @species.update(:name =>params[:name])
    if @species.save
      render 'species/index.html.erb'
    else
      render 'species/edit.html.erb'
    end
  end

  def destroy
    @species_all = Species.all
    @species = Species.find(params[:id])
    @species.destroy
    flash.alert = "Species deleted!"
    flash.notice = "Species destroyed!"
    render 'species/index.html.erb'
  end
end
