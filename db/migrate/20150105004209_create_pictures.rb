class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
        
        t.string :thumburl
        t.references :project
        t.string :alt

      t.timestamps 
    end
  end
end
