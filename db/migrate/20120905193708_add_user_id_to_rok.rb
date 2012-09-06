class AddUserIdToRok < ActiveRecord::Migration
  def change
    add_column :rok, :user_id, :integer
  end
end
