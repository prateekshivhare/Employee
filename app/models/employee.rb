class Employee < ActiveRecord::Base
   belongs_to :designation
   belongs_to :department

#
  validates :first_name, :presence => true
  validates :last_name, :presence => true
#     validates :address1, :presence => true

end
