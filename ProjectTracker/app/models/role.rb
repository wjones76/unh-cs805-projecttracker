class Role < ActiveRecord::Base
  has_many :user_profile_role
  
  attr_accessible :created_by, :created_on, :description, :role_name
end
