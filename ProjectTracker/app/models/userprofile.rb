class Userprofile < ActiveRecord::Base
  belongs_to :department
  attr_accessible :created_on, :email, :first_name, :id, :job_title, :last_name, :nt_login, :phone_number, :department_id
end
