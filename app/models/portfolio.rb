class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  after_initialize :set_defaults

  #if image is Nil, set default image
  def set_defaults
    self.main_image ||= "https://via.placeholder.com/150x300"
    self.thumb_image ||= "https://via.placeholder.com/150"
  end
end
