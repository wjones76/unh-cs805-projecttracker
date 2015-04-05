class Workflow < ActiveRecord::Base
  belongs_to :department
  belongs_to :status
  
  attr_accessible :created_by, :created_on, :description, :workflow_name, :department_id, :status_id
end
