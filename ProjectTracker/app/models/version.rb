class Version < ActiveRecord::Base
  has_many :project
  
  attr_accessible :id, :project_id, :version_name
end
