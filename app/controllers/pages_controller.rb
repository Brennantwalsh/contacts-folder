class PagesController < ApplicationController
  def one
    @one = Contact.find(1)
  end

  def all
    @all = Contact.all
  end
end
