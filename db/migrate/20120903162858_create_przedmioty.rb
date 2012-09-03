class CreatePrzedmioty < ActiveRecord::Migration
  def change
    create_table :przedmioty do |t|
      t.string :rok
      t.string :przedmiot

      t.timestamps
    end
  end
end
