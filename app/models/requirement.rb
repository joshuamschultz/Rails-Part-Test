class Requirement < ActiveRecord::Base
  belongs_to :part
  belongs_to :characteristic
  has_many :discussions, as: :discussable
end
