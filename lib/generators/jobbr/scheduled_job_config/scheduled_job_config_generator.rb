class Jobbr::ScheduledJobConfigGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_config_file
    copy_file "schedule.rb", "config/schedule.rb"
    generate 'jobbr:initializer' unless (Rails.env.test? || Rails.env.ci?)
  end

end
