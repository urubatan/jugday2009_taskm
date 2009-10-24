class Task < ActiveRecord::Base
  named_scope :for_project, lambda { |project|
    {:conditions => {:project_id => project.id}}
  }
  named_scope :not_started, :conditions => "status=0"
  named_scope :development, :conditions => "status=1"
  named_scope :testing, :conditions => "status=2"
  named_scope :done, :conditions => "status=3"
  belongs_to :project
end
