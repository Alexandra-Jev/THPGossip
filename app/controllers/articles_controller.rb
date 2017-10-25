class ArticlesController < ApplicationController

	def new
	
	@gossip = Gossip.find(params[:gossip])

	end
	
	def index
		@gossip = gossips.all
	end
 
	def create
	 render plain: params[:gossip].inspect
	
	puts params.require(:gossip).inspect
	
	redirect_to gossips_path
	
	end
	
	def show
		@gossip = Gossip.find(params[:gossip])
	end
end
