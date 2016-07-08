require 'test_helper'

class TypeDocsControllerTest < ActionController::TestCase
  setup do
    @type_doc = type_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_doc" do
    assert_difference('TypeDoc.count') do
      post :create, type_doc: { cod_sii: @type_doc.cod_sii, name: @type_doc.name, positive: @type_doc.positive }
    end

    assert_redirected_to type_doc_path(assigns(:type_doc))
  end

  test "should show type_doc" do
    get :show, id: @type_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_doc
    assert_response :success
  end

  test "should update type_doc" do
    patch :update, id: @type_doc, type_doc: { cod_sii: @type_doc.cod_sii, name: @type_doc.name, positive: @type_doc.positive }
    assert_redirected_to type_doc_path(assigns(:type_doc))
  end

  test "should destroy type_doc" do
    assert_difference('TypeDoc.count', -1) do
      delete :destroy, id: @type_doc
    end

    assert_redirected_to type_docs_path
  end
end
