class LandingPagesController < ApplicationController

	def home
		@cure_fund_project = CureFundProject.first
		@donor = Donor.new
	end
end