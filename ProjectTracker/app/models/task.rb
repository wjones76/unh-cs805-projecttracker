class Task < ActiveRecord::Base
  belongs_to :priority
  belongs_to :category
  belongs_to :status
  belongs_to :version
  belongs_to :userprofile
  belongs_to :project
  
  attr_accessible :user_profile_id, :description, :end_date, :start_date, :task_name, :version_id
end
