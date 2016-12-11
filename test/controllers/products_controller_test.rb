require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { cap_size: @product.cap_size, collection: @product.collection, description: @product.description, fiber: @product.fiber, handtied?: @product.handtied?, keywords: @product.keywords, product_name: @product.product_name, special_order?: @product.special_order?, type_of_wig: @product.type_of_wig }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { cap_size: @product.cap_size, collection: @product.collection, description: @product.description, fiber: @product.fiber, handtied?: @product.handtied?, keywords: @product.keywords, product_name: @product.product_name, special_order?: @product.special_order?, type_of_wig: @product.type_of_wig }
    assert_redirected_to product_path(assigns(:product))
  end

  
  test "can't delete product in cart" do
 assert_difference('Product.count', 0) do
 delete product_url(products(:two))
 end

 assert_redirected_to products_url
 end
test "should destroy product" do
assert_difference('Product.count', -1) do
delete product_url(@product)
end
assert_redirected_to products_url
end
end
