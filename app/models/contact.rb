class Contact < ActiveRecord::Base
  has_many :addresses, dependent: :destroy
  has_many :emails, dependent: :destroy
  has_many :links, dependent: :destroy
  has_many :phones, dependent: :destroy
  accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :emails, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :links, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
end
