class AddUserToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :user, foreign_key: true
  end
end
