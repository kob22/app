# encoding: utf-8
class Grupa < ActiveRecord::Base
  belongs_to :przedmiot
  attr_accessor :rok_id
  attr_accessible :dzień, :godzina, :grupa, :przedmiot_id, :tydzień, :rok_id
end
