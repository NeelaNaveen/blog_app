class NeelasController < ApplicationController
  before_action :set_neela, only: [:show, :edit, :update, :destroy]

  # GET /neelas
  # GET /neelas.json
  def index
    @neelas = Neela.all
  end

  # GET /neelas/1
  # GET /neelas/1.json
  def show
  end

  # GET /neelas/new
  def new
    @neela = Neela.new
  end

  # GET /neelas/1/edit
  def edit
  end

  # POST /neelas
  # POST /neelas.json
  def create
    @neela = Neela.new(neela_params)

    respond_to do |format|
      if @neela.save
        format.html { redirect_to @neela, notice: 'Neela was successfully created.' }
        format.json { render :show, status: :created, location: @neela }
      else
        format.html { render :new }
        format.json { render json: @neela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neelas/1
  # PATCH/PUT /neelas/1.json
  def update
    respond_to do |format|
      if @neela.update(neela_params)
        format.html { redirect_to @neela, notice: 'Neela was successfully updated.' }
        format.json { render :show, status: :ok, location: @neela }
      else
        format.html { render :edit }
        format.json { render json: @neela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neelas/1
  # DELETE /neelas/1.json
  def destroy
    @neela.destroy
    respond_to do |format|
      format.html { redirect_to neelas_url, notice: 'Neela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neela
      @neela = Neela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neela_params
      params.require(:neela).permit(:username, :height, :weight, :blood, :group)
    end
end
