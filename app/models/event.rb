class Event < ApplicationRecord
  validates_uniqueness_of :place, scope: :start_date
  validate :start_date, if: :start_date?
  belongs_to :place
  has_many :tickets
  def start_date?
    if start_date > Time.new
    end
  end
end
