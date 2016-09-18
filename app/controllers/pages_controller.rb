class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @contacts = Contact.all
    group = params[:group]

    if group
      @contacts = Group.find_by(name: group).contacts
    end
  end

  def new
  end

  def create
    @contact = Contact.create(first_name: params[:first_name],
                              last_name: params[:last_name],
                              middle_name: params[:middle_name],
                              bio: params[:bio],
                              email: params[:email],
                              phone_number: params[:phone_number],
                              user_id: current_user.id)
    flash[:success] = "There is a new one here"
    redirect_to '/contacts/#{@contact.id}'
  end

  def show
    @contact = Contact.find(params[:id])
    @groups = @contact.groups
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(first_name: params[:first_name],
                    last_name: params[:last_name],
                    middle_name: params[:middle_name],
                    bio: params[:bio],
                    email: params[:email],
                    phone_number: params[:phone_number])
    flash[:success] = "done!"
    redirect_to '/contacts/#{@contact.id}'
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:warning] = "it is gone forever"
    redirect_to '/contacts'
  end
end
