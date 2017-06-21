class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :mainImage, :thumbImage
  def self.angular
    where(subtitle: "Angular")
  end
end
