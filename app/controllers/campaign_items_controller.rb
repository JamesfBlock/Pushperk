class CampaignItemsController < ApplicationController
  before_action :set_campaign_item, only: [:show, :edit, :update, :destroy]

  # GET /campaign_items
  # GET /campaign_items.json
  def index
    @campaign_items = CampaignItem.all
  end

  # GET /campaign_items/1
  # GET /campaign_items/1.json
  def show
  end

  # GET /campaign_items/new
  def new
    @campaign_item = CampaignItem.new
  end

  # GET /campaign_items/1/edit
  def edit
  end

  # POST /campaign_items
  # POST /campaign_items.json
  def create
    @campaign_item = CampaignItem.new(campaign_item_params)

    respond_to do |format|
      if @campaign_item.save
        format.html { redirect_to @campaign_item, notice: 'Campaign item was successfully created.' }
        format.json { render :show, status: :created, location: @campaign_item }
      else
        format.html { render :new }
        format.json { render json: @campaign_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaign_items/1
  # PATCH/PUT /campaign_items/1.json
  def update
    respond_to do |format|
      if @campaign_item.update(campaign_item_params)
        format.html { redirect_to @campaign_item, notice: 'Campaign item was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign_item }
      else
        format.html { render :edit }
        format.json { render json: @campaign_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_items/1
  # DELETE /campaign_items/1.json
  def destroy
    @campaign_item.destroy
    respond_to do |format|
      format.html { redirect_to campaign_items_url, notice: 'Campaign item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_item
      @campaign_item = CampaignItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campaign_item_params
      params.require(:campaign_item).permit(:product_id, :campaign_id)
    end
end
