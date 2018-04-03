class Ticket < ApplicationRecord
  validates :price, numericality: { only_integer: true }, numericality: {greater_than: 0}
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets

end
