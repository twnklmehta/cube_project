class AskquestionsController < ApplicationController
  before_action :set_askquestion, only: [:show, :edit, :update, :destroy]
before_filter :authenticate, :except => [:index, :show ]
  # GET /askquestions
  # GET /askquestions.json
  def index
    @askquestions = Askquestion.all
  end

  # GET /askquestions/1
  # GET /askquestions/1.json
  def show
  end

  # GET /askquestions/new
  def new
    @askquestion = Askquestion.new
  end

  # GET /askquestions/1/edit
  def edit
  end

  # POST /askquestions
  # POST /askquestions.json
  def create
    @askquestion = Askquestion.new(askquestion_params)

    respond_to do |format|
      if @askquestion.save
        format.html { redirect_to @askquestion, notice: 'Askquestion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @askquestion }
      else
        format.html { render action: 'new' }
        format.json { render json: @askquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /askquestions/1
  # PATCH/PUT /askquestions/1.json
  def update
    respond_to do |format|
      if @askquestion.update(askquestion_params)
        format.html { redirect_to @askquestion, notice: 'Askquestion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @askquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /askquestions/1
  # DELETE /askquestions/1.json
  def destroy
    @askquestion.destroy
    respond_to do |format|
      format.html { redirect_to askquestions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_askquestion
      @askquestion = Askquestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def askquestion_params
      params.require(:askquestion).permit(:title, :question, :subject)
    end

    private
    def authenticate
      authenticate_or_request_with_http_basic do |name, password|
        name == "admin" && password =="admin"
      end
    end
end
