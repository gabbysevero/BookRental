class Category < ActiveRecord::Base
	has_many :books
	
	validates :name, presence:true, length: {minimum: 8}
	validates :created_at, presence:true
	validates :updated_at, presence:true
end
