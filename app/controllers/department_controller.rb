class DepartmentController < ApplicationController

layout 'standard'



#<p><label for="employee">Department</label>:
#
#<%= collection_select(:employee,:department,Department.all,:id,:code) %></p>
def new
    @department = Department.new
  end
def create
    @department = Department.new(params[:department])
    if @department.save

#      flash[:notice] = "You signed up successfully"
#      flash[:color]= "valid"
      render "list"
    else
     render :text => @department.errors.full_messages
    end
  end
def list
  @department= Department.find(:all)

  end

def show
   @department = Department.find(params[:id])

  end
    def edit

    @department = Department.find(params[:id])
    @employee = Employee.find(:all)
    @designation=Designation.find(:all)



  end
    def update
    @department = Department.find(params[:id])
    if @department.update_attributes(params[:department])
      redirect_to :action => 'show', :id => @department
    else
      @department = Department.find(:all)
      render :action => 'edit'
    end

end
def delete
  Department.find(params[:id]).destroy
  rediret_to :action =>'list'
 

end
end
