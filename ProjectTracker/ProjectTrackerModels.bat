
rails generate scaffold department department:string{30}:uniq

rails generate scaffold status status:string{30}:uniq

rails generate scaffold category category:string{30}:uniq

rails generate scaffold priority priority:string{30}:uniq

rails generate scaffold version version_name:string{30} project_id:integer

rails generate scaffold userprofile first_name:string{30} last_name:string{30} nt_login:string{20}:uniq department:references phone_number:text{20} email:string{80} job_title:string{30} created_on:datetime 

rails generate scaffold project project_name:string{120}:uniq department:references description:text return_on_investment:text submitted_by:string{20} status:references created_on:datetime 

rails generate scaffold task task_name:string{120} description:text priority:references assigned_to:string{20} category:references start_date:date end_date:date version:string{20} status:references

rails generate scaffold workflow workflow_name:string{50}:uniq department:references description:text created_by:string status:references created_on:datetime

rails generate scaffold role role_name:string{50}:uniq description:text created_by:string  created_on:datetime

rails generate scaffold UserProfileRole role:references userprofile:references created_on:datetime

rails generate scaffold ProjectTasks project:references task:references

#:primary_key, :string, :text, :integer, :float, :decimal, :datetime, :timestamp,
#:time, :date, :binary, :boolean, :references

rake db:migrate