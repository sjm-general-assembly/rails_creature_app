class CreaturesController < ApplicationController

	# main page. displays all creatures.
	def index
		# collect all created creatures from DB, then dispaly on main index page
		@creatures = Creature.all
		render :index 
	end

	# main page. displays all creatures.
	def list
		# collect all created creatures from DB, then dispaly on main index page
		@creatures = Creature.all
		render :list 
	end

	# show a form to capture data for a new creature
	def new
		render :new
	end

	# collect info from create form, save it, then redirect to index showing all creatures
	def create
		# collect the information entered on the form, via params (returns a hash)
		creature = params.require(:creature).permit(:name, :description)
		Creature.create(creature)

		# redirects to index
		redirect_to '/creatures'    
	end

	# display a specific creature
	def show
		id = params[:id]
		@creature = Creature.find(id)
		render :show
	end

	# shows a form to capture edit data
	def edit
		id = params[:id]
		@creature = Creature.find(id)
		render :edit
	end

	# collect updated info from edit form, then save, then redirect to index to show all
	def update
		id = params[:id]
		creature = Creature.find(id)

		# get updated attributes from form
		updated_info = params.require(:creature).permit(:name, :description)
		# save updated attributes
		creature.update_attributes(updated_info)

		redirect_to "/creatures/#{creature.id}"
	end

	# method to destroy current creature.
	def destroy
		id = params[:id]
		creature = Creature.find(id)

		creature.destroy

		# redirects to index
		redirect_to '/creatures'    
	end

end



