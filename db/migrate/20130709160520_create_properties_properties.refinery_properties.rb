# This migration comes from refinery_properties (originally 1)
class CreatePropertiesProperties < ActiveRecord::Migration

  def up
    create_table :refinery_properties do |t|
      t.string :name
      t.text :description
      t.integer :img_1_id
      t.integer :img_2_id
      t.integer :img_3_id
      t.integer :img_4_id
      t.integer :img_5_id
      t.integer :img_6_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-properties"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/properties/properties"})
    end

    drop_table :refinery_properties

  end

end
