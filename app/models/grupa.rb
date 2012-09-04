# encoding: utf-8
class Grupa < ActiveRecord::Base
  belongs_to :przedmiot
  attr_accessible :dzień, :godzina, :grupa, :przedmiot_id, :tydzień
end
