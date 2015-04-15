# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#departments
   Department.find_or_create_by_department(:department => 'Marketing')
   Department.find_or_create_by_department(:department => 'Information Technology')
   Department.find_or_create_by_department(:department => 'Customer Care')
   Department.find_or_create_by_department(:department => 'Engineering')
   Department.find_or_create_by_department(:department => 'Technical Operations')
   Department.find_or_create_by_department(:department => 'Finance')

#priorities 
   Priority.find_or_create_by_priority(:priority => 'Urgent')
   Priority.find_or_create_by_priority(:priority => 'High')
   Priority.find_or_create_by_priority(:priority => 'Medium')
   Priority.find_or_create_by_priority(:priority => 'Low')

#statuses
   Status.find_or_create_by_status(:status => 'New')
   Status.find_or_create_by_status(:status => 'In Progress')
   Status.find_or_create_by_status(:status => 'Waiting for Business')
   Status.find_or_create_by_status(:status => 'Issues')
   Status.find_or_create_by_status(:status => 'On Hold')
   Status.find_or_create_by_status(:status => 'Closed')
   Status.find_or_create_by_status(:status => 'Cancelled')
   Status.find_or_create_by_status(:status => 'Rejected')

#user Profile
   Userprofile.find_or_create_by_nt_login(:nt_login => 'WJONES', :first_name => 'Bill', :last_name => 'Jones', :department_id => 2, :phone_number => '(603) 123-1234', :email => 'wjones@unh.edu', :job_title => 'Lead Developer', :created_on => Time.now)
   Userprofile.find_or_create_by_nt_login(:nt_login => 'ASMITH', :first_name => 'Adam', :last_name => 'Smith', :department_id => 1, :phone_number => '(603) 113-1234', :email => 'asmith@unh.edu', :job_title => 'Project Manager', :created_on => Time.now)

#category
   Category.find_or_create_by_category(:category => 'Administration')
   Category.find_or_create_by_category(:category => 'Requirement')

#version
Version.find_or_create_by_project_id(:id => 1, :project_id => 1, :version_name => '1.0.0.0')

#role
  Role.find_or_create_by_role_name(:role_name => 'Business Owner', :created_by => 'WJONES', :created_on => Time.now, :description => 'Person responsible for business decisions for the department')
  Role.find_or_create_by_role_name(:role_name => 'IT Manager', :created_by => 'WJONES', :created_on => Time.now, :description => 'IT Manager responsible for assigning work')
  Role.find_or_create_by_role_name(:role_name => 'Developer', :created_by => 'WJONES', :created_on => Time.now, :description => 'Person responsible for doing the work')
  Role.find_or_create_by_role_name(:role_name => 'QC Analyst', :created_by => 'WJONES', :created_on => Time.now, :description => 'Person responsible for testing the changes')
  Role.find_or_create_by_role_name(:role_name => 'Business Analyst', :created_by => 'WJONES', :created_on => Time.now, :description => 'Person responsible for creating the requirements')

#project
Project.find_or_create_by_project_name(:project_name => 'Project Tracker for IT Work',
                                       :created_on => Time.now, :deliver_date => nil,
                                       :description => "We need a tool that allows the anyone in the business to submit a request, the department's manager can approve or deny, then the IT manager can assign and then the developer can work the tasks in the project. ", :return_on_investment => '',
                                       :submitted_by => 'WJONES', :department_id => 1, :version_id => 1, :status_id=> 1, :category_id => 1)

#task
ProjectTask.find_or_create_by_task_name(:project_id => 1, :assigned_to=> 'WJONES', :description=> 'Task 1', :end_date => nil, :start_date => nil, :task_name => 'Create model', :version=> '0.1.0.0')
ProjectTask.find_or_create_by_task_name(:project_id => 1, :assigned_to=> 'WJONES', :description=> 'Task 2', :end_date => nil, :start_date => nil, :task_name => 'Create scaffolding', :version => '')
ProjectTask.find_or_create_by_task_name(:project_id => 1, :assigned_to=> 'WJONES', :description=> 'Task 3', :end_date => nil, :start_date => nil, :task_name => 'Create stylesheet', :version => '')
ProjectTask.find_or_create_by_task_name(:project_id => 1, :assigned_to=> 'WJONES', :description=> 'Task 4', :end_date => nil, :start_date => nil, :task_name => 'Update application layout', :version => '')
ProjectTask.find_or_create_by_task_name(:project_id => 1, :assigned_to=> 'WJONES', :description=> 'Task 5', :end_date => nil, :start_date => nil, :task_name => 'Create Seed file', :version => '')