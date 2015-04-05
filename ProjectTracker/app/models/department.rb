class Department < ActiveRecord::Base
  has_many :userprofile
  has_many :workflow
  has_many :project
  
  attr_accessible :department, :id
end
