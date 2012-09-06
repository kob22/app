# encoding: utf-8
class Grupa < ActiveRecord::Base
  belongs_to :przedmiot
  belongs_to :user
  attr_accessor :rok_id
  attr_accessible :dzień, :godzina, :grupa, :przedmiot_id, :tydzień, :rok_id
  validates_uniqueness_of :grupa, :scope => [:przedmiot_id, :user_id]
  validates_presence_of :dzień
  validates_presence_of :godzina
  validates_presence_of :grupa
  validates_presence_of :przedmiot_id
  validates_length_of :grupa, :minimum => 2, :maximum => 30
end
