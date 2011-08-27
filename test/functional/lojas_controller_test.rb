require 'test_helper'

class LojasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Loja.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Loja.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Loja.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to loja_url(assigns(:loja))
  end

  def test_edit
    get :edit, :id => Loja.first
    assert_template 'edit'
  end

  def test_update_invalid
    Loja.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Loja.first
    assert_template 'edit'
  end

  def test_update_valid
    Loja.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Loja.first
    assert_redirected_to loja_url(assigns(:loja))
  end

  def test_destroy
    loja = Loja.first
    delete :destroy, :id => loja
    assert_redirected_to lojas_url
    assert !Loja.exists?(loja.id)
  end
end
