# encoding: utf-8
class GrupyController < ApplicationController
  # GET /grupy
  # GET /grupy.json
  def index
    @grupy = current_user.grupy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grupy }
    end
  end

  # GET /grupy/1
  # GET /grupy/1.json
  def show
    @grupa = current_user.grupy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grupa }
    end
  end

  # GET /grupy/new
  # GET /grupy/new.json
  def new
    @grupa = Grupa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grupa }
    end
  end

  # GET /grupy/1/edit
  def edit
    @grupa = Grupa.find(params[:id])
  end

  # POST /grupy
  # POST /grupy.json
  def create
    @grupa = Grupa.new(params[:grupa])
    @grupa.user_id = current_user.id
    respond_to do |format|
      if @grupa.save
        format.html { redirect_to @grupa, notice: 'Grupa została dodana.' }
        format.json { render json: @grupa, status: :created, location: @grupa }
      else
        format.html { render action: "new" }
        format.json { render json: @grupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grupy/1
  # PUT /grupy/1.json
  def update
    @grupa = Grupa.find(params[:id])

    respond_to do |format|
      if @grupa.update_attributes(params[:grupa])
        format.html { redirect_to @grupa, notice: 'Grupa została zaktualizowana.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grupa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupy/1
  # DELETE /grupy/1.json
  def destroy
    @grupa = Grupa.find(params[:id])
    @grupa.destroy

    respond_to do |format|
      format.html { redirect_to grupy_url }
      format.json { head :no_content }
    end
  end


end
