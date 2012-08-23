class CreatePictures < ActiveRecord::Migration
  def up
    	create_table :pictures do |t|
  		t.references :movie
  		t.string :address
  		t.text :description

  		t.timestamps
  end
end

  def down
  	drop_table :pictures
  end
end
