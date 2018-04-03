class User < ApplicationRecord
	validate :email, format: { with:/\A[^@\s]+@[^@\s]+\z/}, presence: true, uniqueness: true
  validate :password, length: { in: 8..12 }, presence: true
  validate :valid_phone, length: { in: 9..12 }, presence: true
	has_many :user_tickets
	has_many :tickets, :through => :user_tickets


end
