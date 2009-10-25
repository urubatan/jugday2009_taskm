# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
User.create :login => 'teste', :password => 'teste', :name => 'Rodrigo Urubatan', :email => 'teste@teste.com.br'
project = Project.create :name => 'Sample Project'
project.tasks.create :title => 'Task 1', :description => 'Test', :status => 0
project.tasks.create :title => 'Task 2', :description => 'Test', :status => 2
project.tasks.create :title => 'Task 3', :description => 'Test', :status => 3
project.tasks.create :title => 'Task r', :description => 'Test', :status => 1
project.tasks.create :title => 'Task 5', :description => 'Test', :status => 0
