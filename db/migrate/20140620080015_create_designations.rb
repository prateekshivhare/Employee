class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      	t.column :id, :int
	t.column :code, :string, :limit => 25
  t.column :name, :string, :limit => 50



     
    end
  end
  def self.down
      drop_table :designations
  end
end
