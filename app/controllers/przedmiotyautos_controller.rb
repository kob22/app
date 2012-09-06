class PrzedmiotyautosController < ApplicationController

  def index
    @przedmiot = current_user.przedmioty.order(:przedmiot).where("przedmiot like ? and rok_id = ?", "%#{params[:term]}%", "%#{params[:parara]}%")
    render json: @przedmiot.map(&:przedmiot)
  end

end
