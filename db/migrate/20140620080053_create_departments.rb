class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
           	t.column :id, :int
	t.column :code, :string, :limit => 25
  t.column :name, :string, :limit => 50



    
    end
  end
  def self.down
      drop_table :departments
  end
end
