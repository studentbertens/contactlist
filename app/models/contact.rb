class Contact < ActiveRecord::Base
  has_many :addresses
  has_many :emails
  has_many :links
  has_many :phones
end
