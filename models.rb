class User < ActiveRecord::Base
	has_many :jabs
	has_one :profile
	has_many :active_relationships,  class_name:  "Relationship",
		foreign_key: "follower_id",
		dependent:   :destroy
	has_many :passive_relationships, class_name:  "Relationship",
		foreign_key: "followed_id",
		dependent:   :destroy
	has_many :following, through: :active_relationships,  source: :followed
	has_many :followers, through: :passive_relationships, source: :follower
	# make users join table?
end

class Jab < ActiveRecord::Base
	belongs_to :user
end

class Profile < ActiveRecord::Base
	belongs_to :user
end

class Relationship < ActiveRecord::Base
	belongs_to :follower, class_name: "User"
	belongs_to :followed, class_name: "User"
end