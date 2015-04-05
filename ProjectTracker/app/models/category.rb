class Category < ActiveRecord::Base
  has_many :project
  has_many :task
  
  attr_accessible :category, :id
end
