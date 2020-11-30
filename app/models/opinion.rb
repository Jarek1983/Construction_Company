class Opinion < ApplicationRecord

	validates :name, presence: true, length: { minimum: 5}
	validates :description, presence: true, length: { maximum: 300}

	scope :permission,-> {where(accept: true)}
	scope :unpermission, -> {where(accept: false)}
	
end
