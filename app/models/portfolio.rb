class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :mainImage, :thumbImage
end
