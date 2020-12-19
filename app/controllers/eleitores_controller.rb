class EleitoresController < ApplicationController
  before_action :set_eleitore, only: [:show, :edit, :update, :destroy]

  # GET /eleitores
  # GET /eleitores.json
  def index
    @eleitores = Eleitore.all
  end

  # GET /eleitores/1
  # GET /eleitores/1.json
  def show
  end

  # GET /eleitores/new
  def new
    @eleitore = Eleitore.new
  end

  # GET /eleitores/1/edit
  def edit
  end

  # POST /eleitores
  # POST /eleitores.json
  def create
    @eleitore = Eleitore.new(eleitore_params)

    respond_to do |format|
      if @eleitore.save
        format.html { redirect_to @eleitore, notice: 'Eleitore was successfully created.' }
        format.json { render :show, status: :created, location: @eleitore }
      else
        format.html { render :new }
        format.json { render json: @eleitore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eleitores/1
  # PATCH/PUT /eleitores/1.json
  def update
    respond_to do |format|
      if @eleitore.update(eleitore_params)
        format.html { redirect_to @eleitore, notice: 'Eleitore was successfully updated.' }
        format.json { render :show, status: :ok, location: @eleitore }
      else
        format.html { render :edit }
        format.json { render json: @eleitore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleitores/1
  # DELETE /eleitores/1.json
  def destroy
    @eleitore.destroy
    respond_to do |format|
      format.html { redirect_to eleitores_url, notice: 'Eleitore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eleitore
      @eleitore = Eleitore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eleitore_params
      params.require(:eleitore).permit(:nome, :string,, :titulo, :string)
    end
end
