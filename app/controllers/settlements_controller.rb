class SettlementsController < ApplicationController
  before_action :set_group, only: %i[new create edit update destroy]
  before_action :set_settlement, only: %i[show edit update destroy]

  # GET /settlements or /settlements.json
  def index
    @settlements = Settlement.all
  end

  # GET /settlements/1 or /settlements/1.json
  def show; end

  # GET /settlements/new
  def new
    @settlement = Settlement.new
  end

  # GET /settlements/1/edit
  def edit; end

  # POST /settlements or /settlements.json
  def create
    @settlement = Settlement.new(settlement_params)
    @settlement.group_id = @group.id
    @settlement.user_id = current_user.id

    respond_to do |format|
      if @settlement.save
        format.html { redirect_to @group, notice: 'Settlement was successfully created.' }
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
        format.html { redirect_to @group, notice: 'Settlement was successfully updated.' }
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
      format.html { redirect_to settlements_url, notice: 'Settlement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_settlement
    @settlement = Settlement.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  # Only allow a list of trusted parameters through.
  def settlement_params
    params.require(:settlement).permit(:name, :amount).merge(user_id: current_user.id)
  end
end
