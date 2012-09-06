class RokAutosController < ApplicationController
  def index
    @rok = current_user.rok.order(:rok).where("rok like ?", "%#{params[:term]}%")
    render json: @rok.map(&:rok)
  end
end
