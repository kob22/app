class Rok < ActiveRecord::Base
  has_many :przedmioty
  belongs_to :user
  attr_accessible :rok
end
