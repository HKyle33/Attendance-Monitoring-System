class ClasslistsController < ApplicationController
  before_action :set_classlist, only: [:show, :edit, :update, :destroy]

  # GET /classlists
  # GET /classlists.json
  def index
    @classlists = Classlist.all
    @subjects = Subject.all 
  end

  # GET /classlists/1
  # GET /classlists/1.json
  def show
  end

  # GET /classlists/new
  def new
    @classlists = Classlist.all
    @subjects = Subject.all 
    @classlist = Classlist.new
  end

  # GET /classlists/1/edit
  def edit
  end

  # POST /classlists
  # POST /classlists.json
  def create
    @classlist = Classlist.new(classlist_params)

    respond_to do |format|
      if @classlist.save
        format.html { redirect_to @classlist, notice: 'Classlist was successfully created.' }
        format.json { render :show, status: :created, location: @classlist }
      else
        format.html { render :new }
        format.json { render json: @classlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classlists/1
  # PATCH/PUT /classlists/1.json
  def update
    respond_to do |format|
      if @classlist.update(classlist_params)
        format.html { redirect_to @classlist, notice: 'Classlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @classlist }
      else
        format.html { render :edit }
        format.json { render json: @classlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classlists/1
  # DELETE /classlists/1.json
  def destroy
    @classlist.destroy
    respond_to do |format|
      format.html { redirect_to classlists_url, notice: 'Classlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classlist
      @classlist = Classlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classlist_params
      params.require(:classlist).permit(:student, :present, :late, :absent, :total)
    end
end
