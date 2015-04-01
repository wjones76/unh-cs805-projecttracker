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