class Part < ActiveRecord::Base
  has_many :requirements
  
  has_attached_file :print, :styles => { :printsize => "800x800", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
