class CreaturesController < ApplicationController

	def index
		render :index 
	end

	def new
		render :new
	end

	def create
		redirect_to '/creatures'
	end

end