class Post < ApplicationRecord
  
	validates :title, presence: true, length: { minimum: 5}
	validates :desctiption, presence: true, length: { minimum: 20}

	belongs_to :user
end
