class Opinion < ApplicationRecord

	validates :name, presence: true, length: { minimum: 5}
	validates :description, presence: true, length: { minimum: 10}

	scope :permission,-> {where(accept: true)}
	scope :unpermission, -> {where(accept: false)}
	
end
