class Category < ApplicationRecord::Base
	attr_accessible :name
	has_many :posts
end
