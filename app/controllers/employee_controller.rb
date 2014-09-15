class EmployeeController < ApplicationController
  before_filter :save_login_state, :only => [:new, :create]
layout 'standard'
#<p><label for="designation_id">Designation_id</label>:   label for table column, label name
#  <%= collection_select('employee',:designation_id,Designation.all,:code,:id) %></p>
#                        'model to  which it save',column name,list of array,code,id
def new
    @employee = Employee.new
#     @department = Department.find(:all)
#     @designation=Designation.find(:all)
  end
#
  def create
#    @department = Department.find(:all)
#     @designation=Designation.find(:all)
    @employee = Employee.new(params[:employee])
    if @employee.save
       
#      flash[:notice] = "You signed up successfully"
#      flash[:color]= "valid"
#      render "list"
redirect_to :action => 'list'
    else
     render :text => @employee.errors.full_messages
    end
  end
def list
    @employee = Employee.find(:all)

  end

def show
    @employee = Employee.find(params[:id])

  end
   def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to :action => 'show', :id => @employee
    else
      @employee = Employee.find(:all)
      render :action => 'edit'
    end

end
def edit

    @employee = Employee.find(params[:id])
    @designation = Designation.find(:all)
    @department=Department.find(:all)



  end
 
  def delete
    Employee.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end