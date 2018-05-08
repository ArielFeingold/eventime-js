class Event < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :rsvps, dependent: :destroy
  has_many :users, through: :rsvps
  has_many :comments

  accepts_nested_attributes_for :location
  accepts_nested_attributes_for :rsvps

  validates :title, :description, :date, :time, presence: true
end
