class Department < ActiveRecord::Base
  has_many :userprofile
  attr_accessible :department, :id
end
