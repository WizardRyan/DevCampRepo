class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percentUtilized
   after_initialize :set_defaults
  
  def set_defaults
    self.badge ||= Placeholder.image_gen(250,250)
  end
end
