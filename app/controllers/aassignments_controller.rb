class AassignmentsController < ApplicationController
  before_action :set_aassignment, only: [:show, :edit, :update, :destroy]

  # GET /aassignments
  # GET /aassignments.json
  def index
    @aassignments = Aassignment.all
  end

  # GET /aassignments/1
  # GET /aassignments/1.json
  def show
  end

  # GET /aassignments/new
  def new
    @aassignment = Aassignment.new
  end

  # GET /aassignments/1/edit
  def edit
  end

  # POST /aassignments
  # POST /aassignments.json
  def create
    @aassignment = Aassignment.new(aassignment_params)

    respond_to do |format|
      if @aassignment.save
        format.html { redirect_to @aassignment, notice: 'Aassignment was successfully created.' }
        format.json { render :show, status: :created, location: @aassignment }
      else
        format.html { render :new }
        format.json { render json: @aassignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aassignments/1
  # PATCH/PUT /aassignments/1.json
  def update
    respond_to do |format|
      if @aassignment.update(aassignment_params)
        format.html { redirect_to @aassignment, notice: 'Aassignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @aassignment }
      else
        format.html { render :edit }
        format.json { render json: @aassignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aassignments/1
  # DELETE /aassignments/1.json
  def destroy
    @aassignment.destroy
    respond_to do |format|
      format.html { redirect_to aassignments_url, notice: 'Aassignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aassignment
      @aassignment = Aassignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aassignment_params
      params.require(:aassignment).permit(:title, :description, :date, :due)
    end
end
