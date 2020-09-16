require "application_system_test_case"

class CompanyProfilesTest < ApplicationSystemTestCase
  setup do
    @company_profile = company_profiles(:one)
  end

  test "visiting the index" do
    visit company_profiles_url
    assert_selector "h1", text: "Company Profiles"
  end

  test "creating a Company profile" do
    visit company_profiles_url
    click_on "New Company Profile"

    fill_in "Name", with: @company_profile.name
    fill_in "Website", with: @company_profile.website
    click_on "Create Company profile"

    assert_text "Company profile was successfully created"
    click_on "Back"
  end

  test "updating a Company profile" do
    visit company_profiles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @company_profile.name
    fill_in "Website", with: @company_profile.website
    click_on "Update Company profile"

    assert_text "Company profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Company profile" do
    visit company_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company profile was successfully destroyed"
  end
end
