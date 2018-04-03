class Place < ApplicationRecord
	validate :name, length: { minimum: 20 }, presence: true
	validate :capacity, numericality: { only_integer: true }, numericality: {greater_than: 0}, presence: true
	has_many :events
end
