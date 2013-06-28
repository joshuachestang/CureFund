class CureFundProject < ActiveRecord::Base

	attr_accessible :expires_at, :name

	has_many :donors

	def self.deadline
		CureFundProject.first.expires_at
	end

	def self.time_left
    (CureFundProject.first.expires_at.to_date - Time.now.to_date).to_i
	end
end
