class Przedmiot < ActiveRecord::Base
  has_many :Rok
  attr_accessible :przedmiot, :rok
validates_presence_of :rok
validates_presence_of :przedmiot
validates_length_of :rok, :minimum => 3, :maximum => 20
validates_length_of :przedmiot, :minimum => 3, :maximum => 100
end
