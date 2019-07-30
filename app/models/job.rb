class Job < ApplicationRecord

  validates :name, presence: true, length: { maximum: 100}
  validates :description, presence: true, length: { maximum: 500}
  validates :specifications, presence: true, length: { maximum: 500}
  validates :offer, presence: true, length: { maximum: 500}
  validates :information, presence: true, length: { maximum: 500}

  belongs_to :user

  extend FriendlyId
  friendly_id :name, use: :slugged

end
