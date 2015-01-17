class CreateProjects < ActiveRecord::Migration
    
  def change
    create_table :projects do |t|
      t.string :name
      t.string :thumburl
      t.text :description
      t.text :post
      t.belongs_to :category
      t.timestamps
    end
  end
end
