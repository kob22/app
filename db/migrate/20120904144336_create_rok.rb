class CreateRok < ActiveRecord::Migration
  def change
    create_table :rok do |t|
      t.string :rok

      t.timestamps
    end
  end
end
