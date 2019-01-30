require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Address", with: @client.address
    fill_in "Dateofbirth", with: @client.dateofbirth
    fill_in "Dateofemploy", with: @client.dateofemploy
    fill_in "Email", with: @client.email
    fill_in "Employministry", with: @client.employministry
    fill_in "Employstatus", with: @client.employstatus
    fill_in "Expretirementdate", with: @client.expretirementdate
    fill_in "Grosssalary", with: @client.grosssalary
    fill_in "Manno", with: @client.manno
    fill_in "Maritalstatus", with: @client.maritalstatus
    fill_in "Name", with: @client.name
    fill_in "Nok", with: @client.nok
    fill_in "Nrc", with: @client.nrc
    fill_in "Phone", with: @client.phone
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Address", with: @client.address
    fill_in "Dateofbirth", with: @client.dateofbirth
    fill_in "Dateofemploy", with: @client.dateofemploy
    fill_in "Email", with: @client.email
    fill_in "Employministry", with: @client.employministry
    fill_in "Employstatus", with: @client.employstatus
    fill_in "Expretirementdate", with: @client.expretirementdate
    fill_in "Grosssalary", with: @client.grosssalary
    fill_in "Manno", with: @client.manno
    fill_in "Maritalstatus", with: @client.maritalstatus
    fill_in "Name", with: @client.name
    fill_in "Nok", with: @client.nok
    fill_in "Nrc", with: @client.nrc
    fill_in "Phone", with: @client.phone
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
