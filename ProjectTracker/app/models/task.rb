class Task < ActiveRecord::Base
  belongs_to :priority
  belongs_to :category
  belongs_to :status
  belongs_to :version
  belongs_to :user_profile
  has_many :project_task
  
  attr_accessible :user_profile_id, :description, :end_date, :start_date, :task_name, :version_id
end
