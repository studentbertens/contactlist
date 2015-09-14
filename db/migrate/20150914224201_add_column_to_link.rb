class AddColumnToLink < ActiveRecord::Migration
  def change
    add_reference :links, :contact, index: true, foreign_key: true
  end
end
