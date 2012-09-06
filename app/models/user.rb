# encoding: utf-8
class User < ActiveRecord::Base
  has_many :rok
  has_many :przedmioty
  has_many :grupy
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :tytuł, :imię, :nazwisko
  # attr_accessible :title, :body
validates_presence_of :tytuł
validates_presence_of :imię
validates_presence_of :nazwisko
validates_length_of :tytuł, :minimum => 3, :maximum => 50
validates_length_of :imię, :minimum => 3, :maximum => 50
validates_length_of :nazwisko, :minimum => 3, :maximum => 50
validates_length_of :email, :maximum => 50

  def self.current_user
    Thread.current[:current_user]
  end

  def self.current_user=(usr)
    Thread.current[:current_user] = usr
  end
end
