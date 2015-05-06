class Userprofile < ActiveRecord::Base
  belongs_to :department
  has_many :user_profile_role
  has_many :task

  validates :email, :presence => true
  validates :first_name, :presence => true, length: { minimum: 2, maximum: 50 }
  validates :id, :presence => true
  validates :job_title, :presence => true, length: { minimum: 2, maximum: 50 }
  validates :last_name, :presence => true, length: { minimum: 2, maximum: 50 }
  validates :nt_login, :presence => true, length: { minimum: 2, maximum: 10 }
  validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "must be a 10 digit number with dashes 123-123-1234" }
  validates :department_id, :presence => true

  attr_accessible :created_on, :email, :first_name, :id, :job_title, :last_name, :nt_login, :phone_number, :department_id
end
