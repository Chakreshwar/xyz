class TesttsController < ApplicationController
  before_action :set_testt, only: [:show, :edit, :update, :destroy]

  # GET /testts
  # GET /testts.json
  def index
    @testts = Testt.all
  end

  # GET /testts/1
  # GET /testts/1.json
  def show
  end

  # GET /testts/new
  def new
    @testt = Testt.new
  end

  # GET /testts/1/edit
  def edit
  end

  # POST /testts
  # POST /testts.json
  def create
    @testt = Testt.new(testt_params)

    respond_to do |format|
      if @testt.save
        format.html { redirect_to @testt, notice: 'Testt was successfully created.' }
        format.json { render :show, status: :created, location: @testt }
      else
        format.html { render :new }
        format.json { render json: @testt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testts/1
  # PATCH/PUT /testts/1.json
  def update
    respond_to do |format|
      if @testt.update(testt_params)
        format.html { redirect_to @testt, notice: 'Testt was successfully updated.' }
        format.json { render :show, status: :ok, location: @testt }
      else
        format.html { render :edit }
        format.json { render json: @testt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testts/1
  # DELETE /testts/1.json
  def destroy
    @testt.destroy
    respond_to do |format|
      format.html { redirect_to testts_url, notice: 'Testt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testt
      @testt = Testt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testt_params
      params.require(:testt).permit(:name)
    end
end
