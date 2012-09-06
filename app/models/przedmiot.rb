class Przedmiot < ActiveRecord::Base
  belongs_to :rok
  has_many :grupy
  belongs_to :user
  attr_accessible :przedmiot, :rok_id, :rok_name
  validates_presence_of :przedmiot
  validates_length_of :przedmiot, :minimum => 3, :maximum => 100
  validates_presence_of :rok_name
  validates_length_of :rok_name, :minimum => 3, :maximum => 20
  validates_uniqueness_of :przedmiot, :scope => [:rok_id, :user_id]


  def rok_name
    rok.try(:rok)
  end

  def rok_name=(name)
    self.rok = Rok.find_or_create_by_rok_and_user_id(name, User.current_user.id) if name.present?
  end

end