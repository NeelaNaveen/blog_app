class NavnsController < ApplicationController
  before_action :set_navn, only: [:show, :edit, :update, :destroy]

  # GET /navns
  # GET /navns.json
  def index
    @navns = Navn.all
  end

  # GET /navns/1
  # GET /navns/1.json
  def show
  end

  # GET /navns/new
  def new
    @navn = Navn.new
  end

  # GET /navns/1/edit
  def edit
  end

  # POST /navns
  # POST /navns.json
  def create
    @navn = Navn.new(navn_params)

    respond_to do |format|
      if @navn.save
        format.html { redirect_to @navn, notice: 'Navn was successfully created.' }
        format.json { render :show, status: :created, location: @navn }
      else
        format.html { render :new }
        format.json { render json: @navn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navns/1
  # PATCH/PUT /navns/1.json
  def update
    respond_to do |format|
      if @navn.update(navn_params)
        format.html { redirect_to @navn, notice: 'Navn was successfully updated.' }
        format.json { render :show, status: :ok, location: @navn }
      else
        format.html { render :edit }
        format.json { render json: @navn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navns/1
  # DELETE /navns/1.json
  def destroy
    @navn.destroy
    respond_to do |format|
      format.html { redirect_to navns_url, notice: 'Navn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navn
      @navn = Navn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def navn_params
      params.require(:navn).permit(:username, :height, :weight, :location)
    end
end
