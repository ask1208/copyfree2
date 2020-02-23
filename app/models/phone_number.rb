class PhoneNumber < ApplicationRecord
  belongs_to :user, optional: true
  validates :zipcode, :phone_numbers ,presence: true
end
