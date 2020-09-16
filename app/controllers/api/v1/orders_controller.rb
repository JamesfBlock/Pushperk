class Api::V1::OrdersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_order, only: [ :show, :update ]

  def index
    @orders = policy_scope(Order)
  end

  def show
  end

  def new
    @order = Order.new
    authorize @order
  end

  # POST /orders
  # POST /orders.json
 def create
    @order = Order.new(order_params)
    @order.order_date = Time.now
    @order.ordered_by_id = current_user.id
    @order.status = "Open"

    campaignItems = Campaign.find(@order.campaign_id).campaign_items
    cost = 0
    campaignItems.each do |campaignItem|
      cost += campaignItem.product.price
    end

    @order.total = cost
    authorize @order
    if @order.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @order.update(order_params)
      render :show
    else
      render_error
    end
  end

  private

  def order_params
    params.require(:order).permit(:id, :campaign_id, :total, :first_name, :last_name, :address_line_1, :address_line_2. :address_line_3, :handling_and_shipping)
  end

  def render_error
    render json: { errors: @order.errors.full_messages },
      status: :unprocessable_entity
  end

  def set_order
    @order = Order.find(params[:id])
    authorize @order  # For Pundit
  end
end
