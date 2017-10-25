class GossipsController < ApplicationController

  def new
    @gossips = Article.new
  end

  def create
render plain: params[:gossips]
redirect_to "/gossips/new"
  end

  def show
    @gossips = Gossips.find(params[:id])
end

end
