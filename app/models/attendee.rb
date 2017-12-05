class Attendee < ApplicationRecord
  validates :firstname, presence: true, length: {maximum: 60}
  validates :lastname, presence: true, length: {maximum: 60}
  validates :email, presence: true
  validates :phone, presence: true
  validates :company, presence: true
  validates :role, presence: true
end
