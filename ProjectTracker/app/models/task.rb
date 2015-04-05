class Task < ActiveRecord::Base
  belongs_to :priority
  belongs_to :category
  belongs_to :status
  has_many :project_task
  
  attr_accessible :assigned_to, :description, :end_date, :start_date, :task_name, :version
end
