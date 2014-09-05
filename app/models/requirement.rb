class Requirement < ActiveRecord::Base
  belongs_to :part
  belongs_to :characteristic
end
