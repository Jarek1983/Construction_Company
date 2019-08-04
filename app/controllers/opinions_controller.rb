class OpinionsController < ApplicationController
  before_action :find_opinion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :new, :create]
  
  def index
    @opinions = Opinion.permission.all.order("created_at DESC").paginate(page: params[:page], per_page: 6) 
  end

  def accept_index
    @opinions = Opinion.all.order("created_at DESC").paginate(page: params[:page], per_page: 6)     
    render 'accept_index'
  end

  def new
    @opinion = Opinion.new
  end

  def create
  	@opinion = Opinion.new(opinion_params)
      if @opinion.save
        flash[:notice] = "Dodałeś opinię"
        redirect_to opinion_path(@opinion)
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
	  if  @opinion.update(opinion_params)
      flash[:notice] = "Zaktualizowałeś opinię"
	    redirect_to accept_index_admin_opinions_path
	  else
		  render 'edit'
	  end
  end

  def destroy
    @opinion.destroy
    flash[:alert] = "Usunąłeś opinię"
    redirect_to opinions_path
  end

  private

  def opinion_params
    params.require(:opinion).permit(:name,:description,:accept)

  end

  def find_opinion
    @opinion = Opinion.find(params[:id])
  end

end
