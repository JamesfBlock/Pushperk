require 'test_helper'

class CampaignItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign_item = campaign_items(:one)
  end

  test "should get index" do
    get campaign_items_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_item_url
    assert_response :success
  end

  test "should create campaign_item" do
    assert_difference('CampaignItem.count') do
      post campaign_items_url, params: { campaign_item: { campaign_id: @campaign_item.campaign_id, product_id: @campaign_item.product_id } }
    end

    assert_redirected_to campaign_item_url(CampaignItem.last)
  end

  test "should show campaign_item" do
    get campaign_item_url(@campaign_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_item_url(@campaign_item)
    assert_response :success
  end

  test "should update campaign_item" do
    patch campaign_item_url(@campaign_item), params: { campaign_item: { campaign_id: @campaign_item.campaign_id, product_id: @campaign_item.product_id } }
    assert_redirected_to campaign_item_url(@campaign_item)
  end

  test "should destroy campaign_item" do
    assert_difference('CampaignItem.count', -1) do
      delete campaign_item_url(@campaign_item)
    end

    assert_redirected_to campaign_items_url
  end
end
