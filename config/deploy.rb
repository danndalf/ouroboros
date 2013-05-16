set :application, "ouroboros"
set :repository,  "https://github.com/danndalf/ouroboros.git"
set :scm, :git


role :web, "ouroboros"
role :app, "ouroboros"
role :db,  "ouroboros", :primary => true 

set :deploy_to, '/var/www/ouroboros'
set :use_sudo, false

# if you want to clean up old releases on each deploy uncomment this:
#after "deploy:restart", "deploy:cleanup"
before "deploy:create_symlink", "deploy:update_config_files"

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
	 task :update_config_files, :roles => :app do
   	 run "cd #{File.join(release_path)}; bundle install && bundle install --deployment"
   	 run "cd #{File.join(release_path)}; cp /home/dann/s3.yml config/"
   	 run "cd #{File.join(release_path)}; cp /home/dann/database.yml config/"
   	 run "cd #{File.join(release_path)}; RAILS_ENV=production rake db:migrate"
	 end
	 task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end
