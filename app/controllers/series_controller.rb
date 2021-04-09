class SeriesController < ApplicationController
	before_action :find_series, only: [:show]

  	def index
      @series = Series.all
      render json: @series, include: [:lessons]
  	end

  	def show
      render json: @series
  	end

  	def trigger_start
  		@series = Series.find(params[:series_id])
  		render json: @series.update_attribute(:started, Time.now)
  	end

  	private
  	def find_series
      @series = Series.find(params[:id])
  	end
end
