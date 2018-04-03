class Place < ApplicationRecord
	validates :name, length: { minimum: 20 }, presence: true
	validates :capacity, numericality: { only_integer: true }, numericality: {greater_than: 0}, presence: true
	has_many :events
end
