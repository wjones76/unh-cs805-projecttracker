class ProjectTask < ActiveRecord::Base
  belongs_to :project
  belongs_to :priority
  belongs_to :category
  belongs_to :status

  attr_accessible :assigned_to, :description, :end_date, :start_date, :task_name, :version,:project_id,:priority_id,:category_id, :status_id
end
