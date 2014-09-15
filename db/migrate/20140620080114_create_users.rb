class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

   t.column :id, :int
	t.column :code, :string, :limit => 25
	t.column :name, :string, :limit => 50
  t.column :address1, :string, :limit => 50
	t.column :address2,:string, :limit => 50
  t.column :city,:string, :limit => 50
  t.column :state,:string, :limit => 50
  t.column :phone1,:int
  t.column :password,:string
   t.column:email,:string

  
    end
  end
  def self.down
      drop_table :users
  end
end
