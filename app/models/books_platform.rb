class BooksPlatform < ApplicationRecord
  belongs_to :platform
  belongs_to :book
end
