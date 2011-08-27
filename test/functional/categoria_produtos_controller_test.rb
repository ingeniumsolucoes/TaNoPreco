require 'test_helper'

class CategoriaProdutosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => CategoriaProduto.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    CategoriaProduto.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    CategoriaProduto.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to categoria_produto_url(assigns(:categoria_produto))
  end

  def test_edit
    get :edit, :id => CategoriaProduto.first
    assert_template 'edit'
  end

  def test_update_invalid
    CategoriaProduto.any_instance.stubs(:valid?).returns(false)
    put :update, :id => CategoriaProduto.first
    assert_template 'edit'
  end

  def test_update_valid
    CategoriaProduto.any_instance.stubs(:valid?).returns(true)
    put :update, :id => CategoriaProduto.first
    assert_redirected_to categoria_produto_url(assigns(:categoria_produto))
  end

  def test_destroy
    categoria_produto = CategoriaProduto.first
    delete :destroy, :id => categoria_produto
    assert_redirected_to categoria_produtos_url
    assert !CategoriaProduto.exists?(categoria_produto.id)
  end
end
