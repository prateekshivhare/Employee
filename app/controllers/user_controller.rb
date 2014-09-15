class UserController < ApplicationController
  layout 'standard'
before_filter :save_login_state, :only => [:new, :create]

    #http_basic_authenticate_with :email=> "prateek@gmail.com", :password => "jk"


  def new
    @user = User.new

  end
  def logg

   @user = User.new(params[:user])

  render "list" if @user.save



  end

#
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
     # redirect_to :controller=>'session', :action => 'login_attempt'
     render "list"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end



  end
 def list
    @user = User.find(:all)

  end
  def show
    @user = User.find(params[:id])

  end
end
#class UserController < ApplicationController
#
#before_filter :login_required, :only => :my_account
#
#
#
#  def new
#    @user = User.new
#
#  end
#  def logg
#
#   @user = User.new(params[:user])
#
#  render "list" if @user.save
#
#
#
#  end
#
##
#  def create
#    @user = User.new(params[:user])
#    if @user.save
#      flash[:notice] = "You signed up successfully"
#      flash[:color]= "valid"
#     # redirect_to :controller=>'session', :action => 'login_attempt'
#     render "list"
#    else
#      flash[:notice] = "Form is invalid"
#      flash[:color]= "invalid"
#      render "new"
#    end
#
#
#
#  end
# def list
#    @user = User.find(:all)
#
#  end
#  def show
#    @user = User.find(params[:id])
#
#  end
#def login
#  @user=User.new
#  @user.email = params[:email]
#
#end
#
#def process_login
#if user = User.authenticate(params[:user])
#session[:id] = user.id # Remember the user's id during this session
#redirect_to session[:return_to] || '/'
#else
#flash[:error] = 'Invalid login.'
#redirect_to :action => 'login', :email => params[:user][:email]
#end
#end
#def logout
#reset_session
#flash[:message] = 'Logged out.'
#redirect_to :action => 'login'
#end
#def my_account
#end
#end