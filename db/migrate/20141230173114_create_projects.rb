class CreateProjects < ActiveRecord::Migration
    
    class Project < ActiveRecord::Base
    end
    
  def change
    create_table :projects do |t|
    
      t.string :name
      t.string :thumburl
      t.text :description
      t.text :post
      t.timestamps
      
    end
  end
end
