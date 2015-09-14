class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @Contact = Contact.create
  end
end
