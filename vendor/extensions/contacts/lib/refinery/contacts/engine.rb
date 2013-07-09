module Refinery
  module Contacts
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Contacts

      engine_name :refinery_contacts

      initializer "register refinerycms_contacts plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "contacts"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.contacts_admin_contacts_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/contacts/contact',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Contacts)
      end
    end
  end
end
