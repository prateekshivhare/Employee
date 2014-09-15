class Designation < ActiveRecord::Base
  has_many :employees
   validates :code, :presence => true,:uniqueness=> true
    validates :name, :presence => true,:uniqueness=> true

end
