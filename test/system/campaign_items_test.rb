require "application_system_test_case"

class CampaignItemsTest < ApplicationSystemTestCase
  setup do
    @campaign_item = campaign_items(:one)
  end

  test "visiting the index" do
    visit campaign_items_url
    assert_selector "h1", text: "Campaign Items"
  end

  test "creating a Campaign item" do
    visit campaign_items_url
    click_on "New Campaign Item"

    fill_in "Campaign", with: @campaign_item.campaign_id
    fill_in "Product", with: @campaign_item.product_id
    click_on "Create Campaign item"

    assert_text "Campaign item was successfully created"
    click_on "Back"
  end

  test "updating a Campaign item" do
    visit campaign_items_url
    click_on "Edit", match: :first

    fill_in "Campaign", with: @campaign_item.campaign_id
    fill_in "Product", with: @campaign_item.product_id
    click_on "Update Campaign item"

    assert_text "Campaign item was successfully updated"
    click_on "Back"
  end

  test "destroying a Campaign item" do
    visit campaign_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campaign item was successfully destroyed"
  end
end
