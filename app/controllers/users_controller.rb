class UsersController < ApplicationController
  
def new
  @user = User.new
end

 def validate_each(object, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
      object.errors.add(attribute, :email_format, options)
    end
end
def create
  @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

end
