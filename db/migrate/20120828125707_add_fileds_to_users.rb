# encoding: utf-8
class AddFiledsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tytuł, :string
    add_column :users, :imię, :string
    add_column :users, :nazwisko, :string
  end
end
