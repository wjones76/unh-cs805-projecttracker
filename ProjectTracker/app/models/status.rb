class Status < ActiveRecord::Base
  has_many :workflow
  has_many :project
  has_many :task
  
  attr_accessible :id, :status
end
