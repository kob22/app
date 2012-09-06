# encoding: utf-8

module GrupyHelper

  def dzień_h
    ["Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota", "Niedziela"]
  end

  def tydzień_h
    ["A","B","AB"]
  end
  def formated_godzina(godzina)
    godzina.to_s(:time)
  end
end
