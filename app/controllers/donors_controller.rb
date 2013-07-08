class DonorsController < ApplicationController

	def new
    @project = Project.find(params[:project_id])
    @backer = Backer.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @backer }
    end
  end

  def create
  	@cure_fund_project = CureFundProject.first
  	@donor = @cure_fund_project.donors.build(params[:donor])
  	respond_to do |format|
  		format.html { redirect_to :back }
  		# format.js
  	end
  end
end