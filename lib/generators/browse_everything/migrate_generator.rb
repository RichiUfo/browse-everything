# -*- encoding : utf-8 -*-
require 'rails/generators'

class BrowseEverything::MigrateGenerator < Rails::Generators::Base
  desc 'This generator add migrations into your application'

  source_root File.expand_path('../templates', __FILE__)

  def add_migrations
    generate 'model Image path:string'
    generate 'model EntityImage entity:string entity_id:integer image:references'
  end
end
