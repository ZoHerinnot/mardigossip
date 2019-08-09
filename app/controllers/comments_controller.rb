class CommentsController < ApplicationController
  def index
  end

  def new
  	@commment = Comment.new
  end

  def create
  	 @comment = Comment.new(content: params[:content], gossip_id: rand(Gossip.first.id..Gossip.last.id), user_id: rand(User.first.id..User.last.id))  # avec xxx qui sont les données obtenues à partir du formulaire
  
    if @gossips.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      redirect_to action: 'index' 
    else
      render 'new'
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end

  end

  def update
  end
end
