class Rok < ActiveRecord::Base
  has_many :przedmioty
  attr_accessible :rok
end
