class AddColumnToEmail < ActiveRecord::Migration
  def change
    add_reference :emails, :contact, index: true, foreign_key: true
  end
end
