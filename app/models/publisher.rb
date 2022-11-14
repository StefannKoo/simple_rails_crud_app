class Publisher < ApplicationRecord
    has_many :books
    validates :name, :adress, presence: true
    validates :name, :adress, length:{minimum: 2}
    validates :name, uniqueness: {message:"The name must be unique !!"}
    accepts_nested_attributes_for :books

end
