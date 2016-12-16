class JobsController < ApplicationController
      before_action :authenticate_user!
 def index
  	@job = Job.page(params[:page]).per(25)
  end

  def new
 	@job = Job.new

  def create
  	@job = Job.new(params.require(:job).permit(:title, :company, :url))
  	if @job.save
  		redirect_to root_path
  	else
  		render "new"
  	end
  	
  end


end

end