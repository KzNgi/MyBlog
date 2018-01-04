class MessavesController < ApplicationController
  before_action :set_messafe, only: [:show, :edit, :update, :destroy]

  # GET /messaves
  # GET /messaves.json
  def index
    @messaves = Messafe.all
  end

  # GET /messaves/1
  # GET /messaves/1.json
  def show
  end

  # GET /messaves/new
  def new
    @messafe = Messafe.new
  end

  # GET /messaves/1/edit
  def edit
  end

  # POST /messaves
  # POST /messaves.json
  def create
    @messafe = Messafe.new(messafe_params)

    respond_to do |format|
      if @messafe.save
        format.html { redirect_to @messafe, notice: 'Messafe was successfully created.' }
        format.json { render :show, status: :created, location: @messafe }
      else
        format.html { render :new }
        format.json { render json: @messafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messaves/1
  # PATCH/PUT /messaves/1.json
  def update
    respond_to do |format|
      if @messafe.update(messafe_params)
        format.html { redirect_to @messafe, notice: 'Messafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @messafe }
      else
        format.html { render :edit }
        format.json { render json: @messafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messaves/1
  # DELETE /messaves/1.json
  def destroy
    @messafe.destroy
    respond_to do |format|
      format.html { redirect_to messaves_url, notice: 'Messafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messafe
      @messafe = Messafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def messafe_params
      params.require(:messafe).permit(:title, :message)
    end
end
