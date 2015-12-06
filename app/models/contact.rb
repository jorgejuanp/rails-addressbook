class Contact < ActiveRecord::Base
  validates_presence_of :name, :address, presence: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :phone_number, numericality: { only_integer: true }
end
