class Api::V1::CampaignsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_campaign, only: [ :show, :update ]

  def index
    @campaigns = policy_scope(Campaign)
  end

  def show
  end

  def new
    @campaign = Campaign.new
    authorize @campaign
  end

  # POST /campaigns
  # POST /campaigns.json
 def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = current_user.id
    authorize @campaign
    if @campaign.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @campaign.update(campaign_params)
      render :show
    else
      render_error
    end
  end

  private

  def campaign_params
    params.require(:campaign).permit(:id, :name, :description)
  end

  def render_error
    render json: { errors: @campaign.errors.full_messages },
      status: :unprocessable_entity
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
    authorize @campaign  # For Pundit
  end
end
