class Post < ApplicationRecord
	# attr_accessible :name, :body, :category_id, :author_id
	# attr_accessible :admin_user_id
	belongs_to :category
	belongs_to :admin_user
end
