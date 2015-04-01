
rails generate scaffold department id:primary_key department:string{30}:uniq

rails generate scaffold status id:primary_key status:string{30}:uniq

rails generate scaffold category  id:primary_key category:string{30}:uniq

rails generate scaffold priority  id:primary_key priority:string{30}:uniq

rails generate scaffold version  id:primary_key version_name:string{30} project_id:integer

rails generate scaffold userprofile  id:primary_key first_name:string{30} last_name:string{30} nt_login:string{20}:uniq department:references phone_number:text{20} email:string{80} job_title:string{30} created_on:datetime 

rails generate scaffold project  id:primary_key project_name:string{120}:uniq department:references description:text return_on_investment:text submitted_by:string{20} status:references created_on:datetime 

rails generate scaffold task  id:primary_key task_name:string{120} description:text priority:references assigned_to:string{20} category:references start_date:date end_date:date version:string{20} status:references

rails generate scaffold workflow  id:primary_key workflow_name:string{50}:uniq department:references description:text created_by:string status:references created_on:datetime

rails generate scaffold role id:primary_key  role_name:string{50}:uniq description:text created_by:string  created_on:datetime

rails generate scaffold UserProfileRole id:primary_key  role:references userprofile:references created_on:datetime

rails generate scaffold ProjectTasks id:primary_key  project:references task:references

#:primary_key, :string, :text, :integer, :float, :decimal, :datetime, :timestamp,
#:time, :date, :binary, :boolean, :references

rake db:migrate