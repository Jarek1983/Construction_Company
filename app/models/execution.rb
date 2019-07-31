class Execution < ApplicationRecord

	validates :title, presence: true, length: { minimum: 5}
	validates :description, presence: true, length: { minimum: 30}
  
 	belongs_to :user

end
