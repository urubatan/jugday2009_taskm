class TaskLogsController < ApplicationController
  # GET /task_logs
  # GET /task_logs.xml
  def index
    @task_logs = TaskLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_logs }
    end
  end

  # GET /task_logs/1
  # GET /task_logs/1.xml
  def show
    @task_log = TaskLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_log }
    end
  end

  # GET /task_logs/new
  # GET /task_logs/new.xml
  def new
    @task_log = TaskLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_log }
    end
  end

  # GET /task_logs/1/edit
  def edit
    @task_log = TaskLog.find(params[:id])
  end

  # POST /task_logs
  # POST /task_logs.xml
  def create
    @task_log = TaskLog.new(params[:task_log])

    respond_to do |format|
      if @task_log.save
        flash[:notice] = 'TaskLog was successfully created.'
        format.html { redirect_to(@task_log) }
        format.xml  { render :xml => @task_log, :status => :created, :location => @task_log }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_logs/1
  # PUT /task_logs/1.xml
  def update
    @task_log = TaskLog.find(params[:id])

    respond_to do |format|
      if @task_log.update_attributes(params[:task_log])
        flash[:notice] = 'TaskLog was successfully updated.'
        format.html { redirect_to(@task_log) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_logs/1
  # DELETE /task_logs/1.xml
  def destroy
    @task_log = TaskLog.find(params[:id])
    @task_log.destroy

    respond_to do |format|
      format.html { redirect_to(task_logs_url) }
      format.xml  { head :ok }
    end
  end
end
