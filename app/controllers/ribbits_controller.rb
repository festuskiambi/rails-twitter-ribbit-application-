class RibbitsController < ApplicationController
  before_action :set_ribbit, only: [:show, :edit, :update, :destroy]

  # GET /ribbits
  # GET /ribbits.json
  def index
    @ribbits = Ribbit.all
  end

  # GET /ribbits/1
  # GET /ribbits/1.json
  def show
  end

  # GET /ribbits/new
  def new
    @ribbit = Ribbit.new
  end

  # GET /ribbits/1/edit
  def edit
  end

  # POST /ribbits
  # POST /ribbits.json
  def create
    @ribbit = Ribbit.new(ribbit_params)

    respond_to do |format|
      if @ribbit.save
        format.html { redirect_to @ribbit, notice: 'Ribbit was successfully created.' }
        format.json { render :show, status: :created, location: @ribbit }
      else
        format.html { render :new }
        format.json { render json: @ribbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ribbits/1
  # PATCH/PUT /ribbits/1.json
  def update
    respond_to do |format|
      if @ribbit.update(ribbit_params)
        format.html { redirect_to @ribbit, notice: 'Ribbit was successfully updated.' }
        format.json { render :show, status: :ok, location: @ribbit }
      else
        format.html { render :edit }
        format.json { render json: @ribbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ribbits/1
  # DELETE /ribbits/1.json
  def destroy
    @ribbit.destroy
    respond_to do |format|
      format.html { redirect_to ribbits_url, notice: 'Ribbit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ribbit
      @ribbit = Ribbit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ribbit_params
      params.require(:ribbit).permit(:content, :user_id)
    end
end
