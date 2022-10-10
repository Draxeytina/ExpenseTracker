class SettlementsController < ApplicationController
  before_action :set_settlement, only: %i[ show edit update destroy ]

  # GET /settlements or /settlements.json
  def index
    @settlements = Settlement.all
  end

  # GET /settlements/1 or /settlements/1.json
  def show
  end

  # GET /settlements/new
  def new
    @settlement = Settlement.new
  end

  # GET /settlements/1/edit
  def edit
  end

  # POST /settlements or /settlements.json
  def create
    @settlement = Settlement.new(settlement_params)

    respond_to do |format|
      if @settlement.save
        format.html { redirect_to settlement_url(@settlement), notice: "Settlement was successfully created." }
        format.json { render :show, status: :created, location: @settlement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @settlement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settlements/1 or /settlements/1.json
  def update
    respond_to do |format|
      if @settlement.update(settlement_params)
        format.html { redirect_to settlement_url(@settlement), notice: "Settlement was successfully updated." }
        format.json { render :show, status: :ok, location: @settlement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @settlement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settlements/1 or /settlements/1.json
  def destroy
    @settlement.destroy

    respond_to do |format|
      format.html { redirect_to settlements_url, notice: "Settlement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_settlement
      @settlement = Settlement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def settlement_params
      params.fetch(:settlement, {})
    end
end
