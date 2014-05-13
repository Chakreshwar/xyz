class NewTestsController < ApplicationController
  before_action :set_new_test, only: [:show, :edit, :update, :destroy]

  # GET /new_tests
  # GET /new_tests.json
  def index
    @new_tests = NewTest.all
  end

  # GET /new_tests/1
  # GET /new_tests/1.json
  def show
  end

  # GET /new_tests/new
  def new
    @new_test = NewTest.new
  end

  # GET /new_tests/1/edit
  def edit
  end

  # POST /new_tests
  # POST /new_tests.json
  def create
    @new_test = NewTest.new(new_test_params)

    respond_to do |format|
      if @new_test.save
        format.html { redirect_to @new_test, notice: 'New test was successfully created.' }
        format.json { render :show, status: :created, location: @new_test }
      else
        format.html { render :new }
        format.json { render json: @new_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_tests/1
  # PATCH/PUT /new_tests/1.json
  def update
    respond_to do |format|
      if @new_test.update(new_test_params)
        format.html { redirect_to @new_test, notice: 'New test was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_test }
      else
        format.html { render :edit }
        format.json { render json: @new_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_tests/1
  # DELETE /new_tests/1.json
  def destroy
    @new_test.destroy
    respond_to do |format|
      format.html { redirect_to new_tests_url, notice: 'New test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_test
      @new_test = NewTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_test_params
      params.require(:new_test).permit(:email)
    end
end
