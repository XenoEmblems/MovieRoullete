class ActorsController < ApplicationController
    def index
    @actor = Actor.all
  end

  def show
    @Actor = Actor.find(params[:id])
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      redirect_to @actor
    else
      render :new
    end
  end

  private

  def actor_params
    params.require(:actor).permit(:fullname)
  end
end
