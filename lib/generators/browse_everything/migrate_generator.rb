# -*- encoding : utf-8 -*-
require 'rails/generators'

class BrowseEverything::MigrateGenerator < Rails::Generators::Base
  desc 'This generator add migrations into your application'

  source_root File.expand_path('../templates', __FILE__)

  def add_migrations
    generate 'model Entity name:string'
    generate 'model Image path:string name:string'
    generate 'model EntityImage entity:string entity:references file:references'
  end
end
