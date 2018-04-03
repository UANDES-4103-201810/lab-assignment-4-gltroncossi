class UserTicket < ApplicationRecord
  validate :ticket
  belongs_to :user
  belongs_to :ticket
end
