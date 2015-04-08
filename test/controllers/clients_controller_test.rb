require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { addressline1: @client.addressline1, addressline2: @client.addressline2, billingrate: @client.billingrate, city: @client.city, clientname: @client.clientname, clientsince: @client.clientsince, clienttype: @client.clienttype, contactemail: @client.contactemail, contactname: @client.contactname, contactphone: @client.contactphone, hourspermonth: @client.hourspermonth, internalid: @client.internalid, invoicetype: @client.invoicetype, monthlyretainer: @client.monthlyretainer, primaryphone: @client.primaryphone, state: @client.state, status: @client.status, zip: @client.zip }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { addressline1: @client.addressline1, addressline2: @client.addressline2, billingrate: @client.billingrate, city: @client.city, clientname: @client.clientname, clientsince: @client.clientsince, clienttype: @client.clienttype, contactemail: @client.contactemail, contactname: @client.contactname, contactphone: @client.contactphone, hourspermonth: @client.hourspermonth, internalid: @client.internalid, invoicetype: @client.invoicetype, monthlyretainer: @client.monthlyretainer, primaryphone: @client.primaryphone, state: @client.state, status: @client.status, zip: @client.zip }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
