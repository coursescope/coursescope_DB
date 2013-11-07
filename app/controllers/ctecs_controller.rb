class CtecsController < ApplicationController
  before_action :set_ctec, only: [:show, :edit, :update, :destroy]

  # GET /ctecs
  # GET /ctecs.json
  def index
    @ctecs = Ctec.all
  end

  # GET /ctecs/1
  # GET /ctecs/1.json
  def show
  end

  # GET /ctecs/new
  def new
    @ctec = Ctec.new
  end

  # GET /ctecs/1/edit
  def edit
  end

  # POST /ctecs
  # POST /ctecs.json
  def create
    @ctec = Ctec.new(ctec_params)

    respond_to do |format|
      if @ctec.save
        format.html { redirect_to @ctec, notice: 'Ctec was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ctec }
      else
        format.html { render action: 'new' }
        format.json { render json: @ctec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ctecs/1
  # PATCH/PUT /ctecs/1.json
  def update
    respond_to do |format|
      if @ctec.update(ctec_params)
        format.html { redirect_to @ctec, notice: 'Ctec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ctec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ctecs/1
  # DELETE /ctecs/1.json
  def destroy
    @ctec.destroy
    respond_to do |format|
      format.html { redirect_to ctecs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ctec
      @ctec = Ctec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ctec_params
      params.require(:ctec).permit(:course_ID, :description, :instr_rating, :course_rating, :learned_rating, :challenging_rating, :interest_rating, :school, :class, :reason, :interest_before)
    end
end
