class Donor < ActiveRecord::Base
	attr_accessible :email, :name, :donation_amount, :expiration_date, :stripe_card_token, :expiration_date_year, :expiration_date_month

	attr_accessor :expiration_date, :stripe_card_token, :expiration_date_year, :expiration_date_month, :card_number, :cvc

	belongs_to :cure_fund_project

	def self.funding_goal
		100000.to_f
	end

	def self.total_donors
		Donor.count
	end

	def self.donations_total
		Donor.all.map(&:donation_amount).sum.to_f
	end

	def self.percentage_raised_of_goal
		(Donor.donations_total/Donor.funding_goal) * 100.to_f
	end

	

	
end
