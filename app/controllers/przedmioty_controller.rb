# encoding: utf-8
class PrzedmiotyController < ApplicationController
before_filter :authenticate_user!
  # GET /przedmioty
  # GET /przedmioty.json
  def index
    @przedmioty = Przedmiot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @przedmioty }
    end
  end

  # GET /przedmioty/1
  # GET /przedmioty/1.json
  def show
    @przedmiot = Przedmiot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @przedmiot }
    end
  end

  # GET /przedmioty/new
  # GET /przedmioty/new.json
  def new
    @przedmiot = Przedmiot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @przedmiot }
    end
  end

  # GET /przedmioty/1/edit
  def edit
    @przedmiot = Przedmiot.find(params[:id])
  end

  # POST /przedmioty
  # POST /przedmioty.json
  def create
    @przedmiot = Przedmiot.new(params[:przedmiot])



    respond_to do |format|
        if !@przedmiot.rok_id.blank? or ( !@przedmiot.new_rok_name.blank? and @przedmiot.new_rok_name.length >2 and @przedmiot.new_rok_name.length <21 )
          if @przedmiot.save
            format.html { redirect_to @przedmiot, notice: 'Przedmiot został dodany.' }
            format.json { render json: @przedmiot, status: :created, location: @przedmiot }
          else
            format.html { render action: "new" }
            format.json { render json: @przedmiot.errors, status: :unprocessable_entity }
          end
        else
          if @przedmiot.rok_id.blank? and @przedmiot.new_rok_name.blank?
          @przedmiot.errors[:rok] = "nie może być puste"
          else if @przedmiot.new_rok_name.length <3
                 @przedmiot.errors[:rok] = "jest za krótkie (przynajmniej 3 znaków)"
          else if @przedmiot.new_rok_name.length >20
                 @przedmiot.errors[:rok] = "jest za długie (maksymalnie 20 znaków)"
               end
          end
          end
          format.html { render action: "new" }
          format.json { render json: @przedmiot.errors, status: :unprocessable_entity }
        end

    end
  end

  # PUT /przedmioty/1
  # PUT /przedmioty/1.json
  def update
    @przedmiot = Przedmiot.find(params[:id])

    respond_to do |format|
      if !@przedmiot.rok_id.blank? or ( !@przedmiot.new_rok_name.blank? and @przedmiot.new_rok_name.length >2 and @przedmiot.new_rok_name.length <21 )
        if @przedmiot.update_attributes(params[:przedmiot])
          format.html { redirect_to @przedmiot, notice: 'Przedmiot został zaktualizowany.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @przedmiot.errors, status: :unprocessable_entity }
        end
      else
        if @przedmiot.rok_id.blank? and @przedmiot.new_rok_name.blank?
          @przedmiot.errors[:rok] = "nie może być puste"
        else if @przedmiot.new_rok_name.length <3
               @przedmiot.errors[:rok] = "jest za krótkie (przynajmniej 3 znaków)"
             else if @przedmiot.new_rok_name.length >20
                    @przedmiot.errors[:rok] = "jest za długie (maksymalnie 20 znaków)"
                  end
             end
        end
        format.html { render action: "edit" }
        format.json { render json: @przedmiot.errors, status: :unprocessable_entity }
        end

    end
  end

  # DELETE /przedmioty/1
  # DELETE /przedmioty/1.json
  def destroy
    @przedmiot = Przedmiot.find(params[:id])
    @przedmiot.destroy

    respond_to do |format|
      format.html { redirect_to przedmioty_url }
      format.json { head :no_content }
    end
  end
end
