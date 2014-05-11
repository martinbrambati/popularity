class ImagequestionsController < ApplicationController
  before_action :set_imagequestion, only: [:show, :edit, :update, :destroy]

  # GET /imagequestions
  # GET /imagequestions.json
  def index
    @imagequestions = Imagequestion.all
  end

  # GET /imagequestions/1
  # GET /imagequestions/1.json
  def show
  end

  # GET /imagequestions/new
  def new
    @imagequestion = Imagequestion.new
  end

  # GET /imagequestions/1/edit
  def edit
  end

  # POST /imagequestions
  # POST /imagequestions.json
  def create
    @imagequestion = Imagequestion.new(imagequestion_params)

    respond_to do |format|
      if @imagequestion.save
        format.html { redirect_to @imagequestion, notice: 'Imagequestion was successfully created.' }
        format.json { render :show, status: :created, location: @imagequestion }
      else
        format.html { render :new }
        format.json { render json: @imagequestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagequestions/1
  # PATCH/PUT /imagequestions/1.json
  def update
    respond_to do |format|
      if @imagequestion.update(imagequestion_params)
        format.html { redirect_to @imagequestion, notice: 'Imagequestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagequestion }
      else
        format.html { render :edit }
        format.json { render json: @imagequestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagequestions/1
  # DELETE /imagequestions/1.json
  def destroy
    @imagequestion.destroy
    respond_to do |format|
      format.html { redirect_to imagequestions_url, notice: 'Imagequestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagequestion
      @imagequestion = Imagequestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagequestion_params
      params.require(:imagequestion).permit(:file_name, :hint, :category_id)
    end
end
