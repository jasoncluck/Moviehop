class CreatePictures < ActiveRecord::Migration
  def up
  	drop_table :pictures
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
