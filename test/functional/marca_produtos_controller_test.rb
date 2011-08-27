require 'test_helper'

class MarcaProdutosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MarcaProduto.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MarcaProduto.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MarcaProduto.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to marca_produto_url(assigns(:marca_produto))
  end

  def test_edit
    get :edit, :id => MarcaProduto.first
    assert_template 'edit'
  end

  def test_update_invalid
    MarcaProduto.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MarcaProduto.first
    assert_template 'edit'
  end

  def test_update_valid
    MarcaProduto.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MarcaProduto.first
    assert_redirected_to marca_produto_url(assigns(:marca_produto))
  end

  def test_destroy
    marca_produto = MarcaProduto.first
    delete :destroy, :id => marca_produto
    assert_redirected_to marca_produtos_url
    assert !MarcaProduto.exists?(marca_produto.id)
  end
end
