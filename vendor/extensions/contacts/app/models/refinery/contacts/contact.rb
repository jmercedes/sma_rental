module Refinery
  module Contacts
    class Contact < Refinery::Core::BaseModel
      self.table_name = 'refinery_contacts'

      attr_accessible :name, :lastname, :company, :email, :phone, :prefered_contact, :address, :address_2, :state, :city, :zip_code, :country, :looking, :budget, :comments, :position

      acts_as_indexed :fields => [:name, :lastname, :company, :email, :phone, :address, :address_2, :state, :city, :zip_code, :country, :looking, :comments]

      alias_attribute :message, :comments

      # Add some validation here if you want to validate the user's input
      # We have validated the first string field for you.
      validates :name, :presence => true
    end
  end
end
