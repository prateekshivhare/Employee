class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      	t.column :id, :int
	t.column :first_name, :string, :limit => 50
	t.column :last_name, :string, :limit => 50
	t.column :address1, :string, :limit => 50
	t.column :address2,:string, :limit => 50
  t.column :city,:string, :limit => 50
  t.column :state,:string, :limit => 50
  t.column :phone1,:int
  t.column :designation_id,:string, :limit => 25
  t.column :manager_id,:int
  t.column :department,:string, :limit => 25


     
    end
  end
  def self.down
      drop_table :employees
  end
end
