class EnlistersController < ApplicationController

	def create
		@enlister = Enlister.create(:email => params[:enlister][:email])
		respond_to do |format|
  		format.html
  		format.js
  	end
	end
end