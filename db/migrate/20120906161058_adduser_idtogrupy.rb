class AdduserIdtogrupy < ActiveRecord::Migration
  def change
    add_column :grupy, :user_id, :integer
  end
end
