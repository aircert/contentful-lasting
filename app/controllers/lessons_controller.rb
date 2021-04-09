class LessonsController < ApplicationController
	before_action :find_lesson, only: :show

  	def index
    	@lessons = Lesson.all
    	render json: @lessons
  	end

  	def show
    	render json: @lesson
  	end


  	def trigger_complete
  		@lesson = Lesson.find(params[:lesson_id])
  		render json: @lesson.update_attribute(:completed, Time.now)
  	end

  	private
  	def find_lesson
    	@lesson = Lesson.find(params[:id])
  	end
end
