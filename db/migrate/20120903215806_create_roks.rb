class CreateRoks < ActiveRecord::Migration
  def change
    create_table :roks do |t|
      t.string :rok

      t.timestamps
    end
  end
end
