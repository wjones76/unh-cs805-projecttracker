class UserMailer < ActionMailer::Base
  default from: 'ProjectTracker@unh.edu'

  def assigned_email(project_task)
    @user = project_task.assigned_to
    @url = 'http://localhost:3000'
    mail(to:@user, subject: 'You have been assigned a task')
  end
end
