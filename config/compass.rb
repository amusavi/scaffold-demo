require 'fileutils'
project_type = :rails
http_path    = '/'
css_dir      = 'tmp/stylesheets'
sass_dir     = 'app/assets/stylesheets'

FileUtils.mkdir_p(Rails.root.join("tmp", "stylesheets"))

Rails.configuration.middleware.insert_before('Rack::Sendfile', 'Rack::Static',
    :urls => ['#{Rails.root}/app/assets/stylesheets'],
    :root => "#{Rails.root}/tmp")
    

