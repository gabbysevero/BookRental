class Category < ActiveRecord::Base
	has_many :books
	
	validates :name, presence:true, format: {with: /[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9]/}
	validates :created_at, presence:true
	validates :updated_at, presence:true
end
