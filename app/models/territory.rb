class Territory < ApplicationRecord
    has_many:platforms
    has_one_attached :flag
    validates :name, :currency, :flag, presence: true
end
