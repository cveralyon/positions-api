class Position < ApplicationRecord
    belongs_to :client
  
    validates :title, presence: true
    validates :description, presence: true
    validates :hiring_number, presence: true, numericality: { greater_than: 0 }
    validates :work_mode, presence: true, inclusion: { in: %w[On-Site Remote Hybrid] }
    validates :location, presence: true
    validates :benefits, presence: true
    validates :salary, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :status, presence: true, inclusion: { in: %w[Open Closed Paused] }

  end
  