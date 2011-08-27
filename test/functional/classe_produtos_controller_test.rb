require 'test_helper'

class ClasseProdutosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ClasseProduto.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ClasseProduto.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ClasseProduto.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to classe_produto_url(assigns(:classe_produto))
  end

  def test_edit
    get :edit, :id => ClasseProduto.first
    assert_template 'edit'
  end

  def test_update_invalid
    ClasseProduto.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ClasseProduto.first
    assert_template 'edit'
  end

  def test_update_valid
    ClasseProduto.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ClasseProduto.first
    assert_redirected_to classe_produto_url(assigns(:classe_produto))
  end

  def test_destroy
    classe_produto = ClasseProduto.first
    delete :destroy, :id => classe_produto
    assert_redirected_to classe_produtos_url
    assert !ClasseProduto.exists?(classe_produto.id)
  end
end
