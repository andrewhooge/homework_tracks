class TturnInsController < ApplicationController
  before_action :set_tturn_in, only: [:show, :edit, :update, :destroy]

  # GET /tturn_ins
  # GET /tturn_ins.json
  def index
    @tturn_ins = TturnIn.all
  end

  # GET /tturn_ins/1
  # GET /tturn_ins/1.json
  def show
    @tturn_in = TturnIn.find(params[:id])
  end

  # GET /tturn_ins/new
  def new
    @tturn_in = TturnIn.new
  end

  # GET /tturn_ins/1/edit
  def edit
  end

  # POST /tturn_ins
  # POST /tturn_ins.json
  def create
    @tturn_in = TturnIn.new(tturn_in_params)
    @tturn_in.user_id = current_user.id

    respond_to do |format|
      if @tturn_in.save
        format.html { redirect_to @tturn_in, notice: 'Assignment Completed' }
        format.json { render :show, status: :created, location: @tturn_in }
      else
        format.html { render :new }
        format.json { render json: @tturn_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tturn_ins/1
  # PATCH/PUT /tturn_ins/1.json
  def update
    respond_to do |format|
      if @tturn_in.update(tturn_in_params)
        format.html { redirect_to @tturn_in, notice: 'Tturn in was successfully updated.' }
        format.json { render :show, status: :ok, location: @tturn_in }
      else
        format.html { render :edit }
        format.json { render json: @tturn_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tturn_ins/1
  # DELETE /tturn_ins/1.json
  def destroy
    @tturn_in.destroy
    respond_to do |format|
      format.html { redirect_to tturn_ins_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_aasignment
      @aassignment = Aassignment.find(params [:exercises_id])
    end

    def set_tturn_in
      @tturn_in = TturnIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tturn_in_params
      params.require(:tturn_in).permit(:user_id, :exercises_id, :url, :completed, :priority, :default)
    end
end
