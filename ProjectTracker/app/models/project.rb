class Project < ActiveRecord::Base
  belongs_to :department
  belongs_to :status
  belongs_to :version
  belongs_to :category
  has_many :project_task
  
  attr_accessible :created_on, :deliver_date, :description, :project_name, :return_on_investment, :submitted_by
end
