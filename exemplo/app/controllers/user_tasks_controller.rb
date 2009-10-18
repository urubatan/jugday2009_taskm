class UserTasksController < ApplicationController
  # GET /user_tasks
  # GET /user_tasks.xml
  def index
    @user_tasks = UserTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_tasks }
    end
  end

  # GET /user_tasks/1
  # GET /user_tasks/1.xml
  def show
    @user_task = UserTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_task }
    end
  end

  # GET /user_tasks/new
  # GET /user_tasks/new.xml
  def new
    @user_task = UserTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_task }
    end
  end

  # GET /user_tasks/1/edit
  def edit
    @user_task = UserTask.find(params[:id])
  end

  # POST /user_tasks
  # POST /user_tasks.xml
  def create
    @user_task = UserTask.new(params[:user_task])

    respond_to do |format|
      if @user_task.save
        flash[:notice] = 'UserTask was successfully created.'
        format.html { redirect_to(@user_task) }
        format.xml  { render :xml => @user_task, :status => :created, :location => @user_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_tasks/1
  # PUT /user_tasks/1.xml
  def update
    @user_task = UserTask.find(params[:id])

    respond_to do |format|
      if @user_task.update_attributes(params[:user_task])
        flash[:notice] = 'UserTask was successfully updated.'
        format.html { redirect_to(@user_task) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_tasks/1
  # DELETE /user_tasks/1.xml
  def destroy
    @user_task = UserTask.find(params[:id])
    @user_task.destroy

    respond_to do |format|
      format.html { redirect_to(user_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
