class UserProfileRole < ActiveRecord::Base
  belongs_to :role
  belongs_to :userprofile
  
  attr_accessible :created_on
end
