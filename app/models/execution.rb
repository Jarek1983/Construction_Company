class Execution < ApplicationRecord

	validates :name, presence: true, length: { minimum: 5}
	validates :description, presence: true, length: { minimum: 50}
  
 	belongs_to :user
 	has_many_attached :images

 	extend FriendlyId
    friendly_id :name, use: :slugged

end
