class Part < ActiveRecord::Base
  has_many :requirements
  has_many :discussions, as: :discussable
end
