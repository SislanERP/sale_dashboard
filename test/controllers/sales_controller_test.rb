require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { broker_id: @sale.broker_id, client_id: @sale.client_id, date_doc: @sale.date_doc, destination_id: @sale.destination_id, number_doc: @sale.number_doc, price: @sale.price, product_id: @sale.product_id, quantity: @sale.quantity, sale_clause: @sale.sale_clause, sale_note: @sale.sale_note, type_doc_id: @sale.type_doc_id, um: @sale.um }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { broker_id: @sale.broker_id, client_id: @sale.client_id, date_doc: @sale.date_doc, destination_id: @sale.destination_id, number_doc: @sale.number_doc, price: @sale.price, product_id: @sale.product_id, quantity: @sale.quantity, sale_clause: @sale.sale_clause, sale_note: @sale.sale_note, type_doc_id: @sale.type_doc_id, um: @sale.um }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
