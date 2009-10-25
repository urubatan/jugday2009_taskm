class HomeController < ApplicationController
  def index
    project_id = session[:project_id]
    if project_id
      project = Project.find project_id
      @ns_tasks = project.tasks.not_started;
      @dev_tasks = project.tasks.development;
      @test_tasks = project.tasks.testing;
      @done_tasks = project.tasks.done;
    else
      @ns_tasks = []
      @dev_tasks = []
      @test_tasks = []
      @done_tasks = []
    end
  end
  
  def change_status
      task_id = params[:task_id]
      task_id = task_id.gsub(/task(.*)/,'\1')
      task = Task.find(task_id)
      new_status = params[:status].to_i
      old_status = task.status
      task.status = new_status
      if task.save
        render :update do |page|
            page.alert "Tarefa '#{task.title}' mudou o status para #{new_status}"
        end
      else
        render :update do |page|
            page.alert "Tarefa '#{task.title}' continua com o mesmo status"
            page["#status#{old_status}"].append("$('#task#{task.id}')"); 
        end
      end
  end
  def select_project
    project_id = params[:project_id]
    project_id = project_id.to_i if project_id
    session[:project_id] = project_id
    redirect_to :action => 'index'
  end
end
