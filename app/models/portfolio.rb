class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :mainImage, :thumbImage
  def self.angular
    where(subtitle: "Angular")
  end
  
  after_initialize :set_defaults
  
  def set_defaults
    
    self.mainImage ||= "http://via.placeholder.com/600x400"
    self.thumbImage ||= "http://via.placeholder.com/350x200"
    
  end
end
