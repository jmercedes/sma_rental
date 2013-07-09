module Refinery
  module Properties
    class Property < Refinery::Core::BaseModel
      self.table_name = 'refinery_properties'

      attr_accessible :name, :description, :img_1_id, :img_2_id, :img_3_id, :img_4_id, :img_5_id, :img_6_id, :position

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :img_1, :class_name => '::Refinery::Image'

      belongs_to :img_2, :class_name => '::Refinery::Image'

      belongs_to :img_3, :class_name => '::Refinery::Image'

      belongs_to :img_4, :class_name => '::Refinery::Image'

      belongs_to :img_5, :class_name => '::Refinery::Image'

      belongs_to :img_6, :class_name => '::Refinery::Image'
    end
  end
end
