class DesignationController < ApplicationController
layout 'standard'
  def new
    @designation = Designation.new
  end
def create
    @designation = Designation.new(params[:designation])
    if @designation.save

#      flash[:notice] = "You signed up successfully"
#      flash[:color]= "valid"
      render "list"
    else
     render :text => @designation.errors.full_messages
    end
  end
def list
  @designation= Designation.find(:all)

  end
  def show
    @designation = Designation.find(params[:id])

  end
  def edit

    @designation = Designation.find(params[:id])
    @employee = Employee.find(:all)
    @department=Department.find(:all)



  end
   def update
    @designation = Designation.find(params[:id])
    if @designation.update_attributes(params[:designation])
      redirect_to :action => 'show', :id => @designation
    else
      @designation = Designation.find(:all)
      render :action => 'edit'
    end

end
def delete
  Designation.find(params[:id]).destroy
  redirect_to :action => 'list'
end


end

