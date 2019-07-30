class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  
  def index
    @jobs = Job.all.reverse
  end

  def new
    @job = Job.new
  end

  def create
  	@job = Job.new(job_params)
      if @job.save
        flash[:notice] = "Dodałeś stanowisko"
        redirect_to job_path(@job)
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
	  if  @job.update(job_params)
      flash[:notice] = "Zaktualizowałeś stanowisko"
	    redirect_to job_path(@job)
	  else
		  render 'edit'
	  end
  end

  def destroy
    @job.destroy
    flash[:alert] = "Usunąłeś stanowisko"
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:name,:description, :specifications, :offer, :information, :user_id)

  end

  def find_job
    @job = Job.friendly.find(params[:id])
  end

end
