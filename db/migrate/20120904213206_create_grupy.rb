# encoding: utf-8
class CreateGrupy < ActiveRecord::Migration
  def change
    create_table :grupy do |t|
      t.string :grupa
      t.integer :przedmiot_id
      t.string :dzień
      t.time :godzina
      t.string :tydzień

      t.timestamps
    end
  end
end
