class ProjectTask < ActiveRecord::Base
  belongs_to :project
  belongs_to :priority
  belongs_to :category
  belongs_to :status
  belongs_to :version
  belongs_to :userprofile

  attr_accessible :user_profile_id, :description, :end_date, :start_date, :task_name, :version_id
end
