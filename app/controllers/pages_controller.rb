class PagesController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
    @contact = Contact.new(first_name: params[:first_name],
                           last_name: params[:last_name],
                           middle_name: params[:middle_name],
                           bio: params[:bio],
                           email: params[:email],
                           phone_number: params[:phone_number])
    flash[:success] = "There is a new one here"
    redirect_to '/contacts/#{@contact.id}'
  end

  def show
    @contact = Contact.find(params[:id])
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
