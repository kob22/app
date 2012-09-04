class EdycjaPrzedmioty < ActiveRecord::Migration

  def change
    remove_column :przedmioty, :rok
    add_column :przedmioty, :rok_id, :integer
  end

end
