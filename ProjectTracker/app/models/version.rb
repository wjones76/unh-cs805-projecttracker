class Version < ActiveRecord::Base
  attr_accessible :id, :project_id, :version_name
end
