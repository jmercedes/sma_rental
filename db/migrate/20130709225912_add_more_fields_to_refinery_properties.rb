class AddMoreFieldsToRefineryProperties < ActiveRecord::Migration
  def change
    add_column :refinery_properties, :price, :float
    add_column :refinery_properties, :bedroom, :float
    add_column :refinery_properties, :bathroom, :float
    add_column :refinery_properties, :area, :float        
  end
end
