class Post < ApplicationRecord::Base
	attr_accessible :name, :body, :category_id, :author_id
	belongs_to :category
end
