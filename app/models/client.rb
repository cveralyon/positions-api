class Client < ApplicationRecord
    has_many :positions, dependent: :destroy
  
    validates :name, presence: true
    validates :logo, presence: true
  end
  