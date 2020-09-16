require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Address line 1", with: @order.address_line_1
    fill_in "Address line 2", with: @order.address_line_2
    fill_in "Address line 3", with: @order.address_line_3
    fill_in "Campaign", with: @order.campaign_id
    fill_in "City", with: @order.city
    fill_in "Country", with: @order.country
    fill_in "County", with: @order.county
    fill_in "First name", with: @order.first_name
    fill_in "Last name", with: @order.last_name
    fill_in "Order date", with: @order.order_date
    fill_in "Postcode", with: @order.postcode
    fill_in "Status", with: @order.status
    fill_in "Title", with: @order.title
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Address line 1", with: @order.address_line_1
    fill_in "Address line 2", with: @order.address_line_2
    fill_in "Address line 3", with: @order.address_line_3
    fill_in "Campaign", with: @order.campaign_id
    fill_in "City", with: @order.city
    fill_in "Country", with: @order.country
    fill_in "County", with: @order.county
    fill_in "First name", with: @order.first_name
    fill_in "Last name", with: @order.last_name
    fill_in "Order date", with: @order.order_date
    fill_in "Postcode", with: @order.postcode
    fill_in "Status", with: @order.status
    fill_in "Title", with: @order.title
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
