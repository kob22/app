class Przedmiot < ActiveRecord::Base
belongs_to :rok
attr_accessor :new_rok_name
attr_accessible :przedmiot, :rok_id, :new_rok_name
validates_presence_of :przedmiot
validates_length_of :przedmiot, :minimum => 3, :maximum => 100


before_save :create_rok_name

def create_rok_name
  create_rok(:rok => new_rok_name) unless new_rok_name.blank?
end

end
