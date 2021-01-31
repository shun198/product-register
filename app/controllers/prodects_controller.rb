class ProdectsController < ApplicationController
  before_action :set_prodect, only: %i[ show edit update destroy ]

  # GET /prodects or /prodects.json
  def index
    @prodects = Prodect.all
  end

  # GET /prodects/1 or /prodects/1.json
  def show
  end

  # GET /prodects/new
  def new
    @prodect = Prodect.new
  end

  # GET /prodects/1/edit
  def edit
  end

  # POST /prodects or /prodects.json
  def create
    @prodect = Prodect.new(prodect_params)

    respond_to do |format|
      if @prodect.save
        format.html { redirect_to @prodect, notice: "Prodect was successfully created." }
        format.json { render :show, status: :created, location: @prodect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prodect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodects/1 or /prodects/1.json
  def update
    respond_to do |format|
      if @prodect.update(prodect_params)
        format.html { redirect_to @prodect, notice: "Prodect was successfully updated." }
        format.json { render :show, status: :ok, location: @prodect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prodect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodects/1 or /prodects/1.json
  def destroy
    @prodect.destroy
    respond_to do |format|
      format.html { redirect_to prodects_url, notice: "Prodect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodect
      @prodect = Prodect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prodect_params
      params.require(:prodect).permit(:name, :price, :vendor)
    end
end
