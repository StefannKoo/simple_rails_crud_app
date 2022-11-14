class Book < ApplicationRecord
    belongs_to :publisher
    has_one_attached :image
    validates :name, :date, :image, presence: true
    scope :have_ebook, ->{where(ebook:false)} #nisam stavljao vise scopes jer nisam imao neke konkretnije upite


end
