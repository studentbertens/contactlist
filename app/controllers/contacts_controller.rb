class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
    @contact.emails.build
    @contact.phones.build
    @contact.links.build
    @contact.addresses.build

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      redirect_to contacts_path
    else
      redirect_to contacts_path
    end
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contact_path(@contact)
    else
      render :edit
    end
  end

  def show
    @contact = Contact.find(params[:id])
    @emails = @contact.emails.all
    @phones = @contact.phones.all
    @links = @contact.links.all
    @addresses = @contact.addresses.all
  end

  def contact_params

    params.require(:contact).permit(:name, :note, emails_attributes: [:id, :email], phones_attributes: [:id, :phone], links_attributes: [:id, :link], addresses_attributes: [:id, :address])
  end

end
