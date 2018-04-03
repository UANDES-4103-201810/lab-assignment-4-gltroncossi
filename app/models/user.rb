class User < ApplicationRecord
	validates :email, format: { with:/\A[^@\s]+@[^@\s]+\z/}, presence: true, uniqueness: true
  validates :password, length: { in: 8..12 }, presence: true
  validates :valid_phone, length: { in: 9..12 }, presence: true
	has_many :user_tickets
	has_many :tickets, :through => :user_tickets


end
