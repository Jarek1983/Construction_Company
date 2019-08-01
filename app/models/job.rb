class Job < ApplicationRecord

  validates :name, presence: true, length: { minimum: 10}
  validates :description, presence: true, length: { minimum: 20}
  validates :specifications, presence: true, length: { minimum: 20}
  validates :offer, presence: true, length: { minimum: 20}
  validates :information, presence: true, length: { minimum: 20}

  belongs_to :user

  extend FriendlyId
  friendly_id :name, use: :slugged

end
