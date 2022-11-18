class Territory < ApplicationRecord
    has_many :platforms
    has_one_attached :flag
    validates :name, :currency, :flag, presence: true
    accepts_nested_attributes_for :platforms
end
