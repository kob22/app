class AddUserIdToPrzedmioty < ActiveRecord::Migration
  def change
    add_column :przedmioty, :user_id, :integer
  end
end
