class HomeController < ApplicationController
  def index
    @ns_tasks = Task.find_all_by_status(0);
    @dev_tasks = Task.find_all_by_status(1);
    @test_tasks = Task.find_all_by_status(2);
    @done_tasks = Task.find_all_by_status(3);
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
end
