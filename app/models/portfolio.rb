class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda {|x| x['name'].blank?}
  include Placeholder
  validates_presence_of :title, :body, :mainImage, :thumbImage
  
  mount_uploader :thumbImage, PortfolioUploader
  mount_uploader :mainImage, PortfolioUploader

  
  def self.angular
    where(subtitle: "Angular")
  end
  
  def self.by_position
    order("position ASC")
  end
  
  after_initialize :set_defaults
  
  def set_defaults
    
    self.mainImage ||= Placeholder.image_gen(600,400)
    self.thumbImage ||= Placeholder.image_gen(350,200)
    
  end
end
