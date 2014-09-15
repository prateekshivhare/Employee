class CreateIs < ActiveRecord::Migration
  def change
    create_table :is do |t|

      t.timestamps
    end
  end
end
