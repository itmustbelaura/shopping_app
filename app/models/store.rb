class Store < ApplicationRecord
    #validations
    validates :name
    validates :address
    validates :phone
    validates :email
    #associations
    has_many :list
    #callbacks
    after_validation :save
    #Instance / Class methods
def self.by_store_id
    order(:store_id)
end
def address
    "#{self.address}"
end 
end