require 'test_helper'

class LinesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
    @line = lines(:one)
  end

  test "should get index" do
    get :index, params: { invoice_id: @invoice }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { invoice_id: @invoice }
    assert_response :success
  end

  test "should create line" do
    assert_difference('Line.count') do
      post :create, params: { invoice_id: @invoice, line: @line.attributes }
    end

    assert_redirected_to invoice_line_path(@invoice, Line.last)
  end

  test "should show line" do
    get :show, params: { invoice_id: @invoice, id: @line }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { invoice_id: @invoice, id: @line }
    assert_response :success
  end

  test "should update line" do
    put :update, params: { invoice_id: @invoice, id: @line, line: @line.attributes }
    assert_redirected_to invoice_line_path(@invoice, Line.last)
  end

  test "should destroy line" do
    assert_difference('Line.count', -1) do
      delete :destroy, params: { invoice_id: @invoice, id: @line }
    end

    assert_redirected_to invoice_lines_path(@invoice)
  end
end
