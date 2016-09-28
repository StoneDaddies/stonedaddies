class Contact < ActiveRecord::Base
  validates :first_name, presence: true
  validates :phone_number, presence: true
  validates :description, presence: true, length: { minimum: 10}
  validates :referral, presence: true
end
