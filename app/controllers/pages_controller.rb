class PagesController < ApplicationController
  def one
    @one = Contact.find(1)
  end

  def all
    @all = Contact.all
  end

  def add_contact
  end

  def create_contact
    @contact = Contact.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone])
    @thanks = 'your information has been saved'
  end
end
