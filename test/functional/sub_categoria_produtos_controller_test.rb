require 'test_helper'

class SubCategoriaProdutosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SubCategoriaProduto.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SubCategoriaProduto.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SubCategoriaProduto.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sub_categoria_produto_url(assigns(:sub_categoria_produto))
  end

  def test_edit
    get :edit, :id => SubCategoriaProduto.first
    assert_template 'edit'
  end

  def test_update_invalid
    SubCategoriaProduto.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SubCategoriaProduto.first
    assert_template 'edit'
  end

  def test_update_valid
    SubCategoriaProduto.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SubCategoriaProduto.first
    assert_redirected_to sub_categoria_produto_url(assigns(:sub_categoria_produto))
  end

  def test_destroy
    sub_categoria_produto = SubCategoriaProduto.first
    delete :destroy, :id => sub_categoria_produto
    assert_redirected_to sub_categoria_produtos_url
    assert !SubCategoriaProduto.exists?(sub_categoria_produto.id)
  end
end
