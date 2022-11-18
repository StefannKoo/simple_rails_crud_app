class Platform < ApplicationRecord
    has_and_belongs_to_many :books
    belongs_to :territory
    has_one_attached :logo
    validates :name, :code, :logo, presence:true
    validates :code, length: { minimum: 8 }
end
