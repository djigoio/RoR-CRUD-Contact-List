class Contact < ApplicationRecord
    validates :first_name, :last_name, :email, :phone, presence: true
    validates_uniqueness_of :email, message: "has already been taken"
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    audited
end
