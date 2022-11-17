class Platform < ApplicationRecord
    has_and_belongs_to_many :books
    belongs_to :teritory
    has_one_attached :logo
end
