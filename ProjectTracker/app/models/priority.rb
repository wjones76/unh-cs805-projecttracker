class Priority < ActiveRecord::Base
  has_many :task
  
  attr_accessible :id, :priority
end
