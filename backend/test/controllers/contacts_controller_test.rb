require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = Contact.create(first_name: "Antonio", last_name: "Djigo", email: "example@email.org", phone: "1234567")
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact with different email" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { email: "different@email.com", first_name: @contact.first_name, last_name: @contact.last_name, phone: @contact.phone } }
    end

    assert_redirected_to contact_url(Contact.last)
  end

  test "should not create contact with same email" do
    assert_no_difference('Contact.count') do
      post contacts_url, params: { contact: { email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, phone: @contact.phone } }
    end
  end

  test "email should be unique" do
    duplicate_item = @contact.dup
    assert_not duplicate_item.valid?
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, phone: @contact.phone } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end
end
