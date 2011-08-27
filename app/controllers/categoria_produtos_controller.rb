class CategoriaProdutosController < ApplicationController
  def index
    @categoria_produtos = CategoriaProduto.all
  end

  def show
    @categoria_produto = CategoriaProduto.find(params[:id])
  end

  def new
    @categoria_produto = CategoriaProduto.new
  end

  def create
    @categoria_produto = CategoriaProduto.new(params[:categoria_produto])
    if @categoria_produto.save
      redirect_to @categoria_produto, :notice => "Successfully created categoria produto."
    else
      render :action => 'new'
    end
  end

  def edit
    @categoria_produto = CategoriaProduto.find(params[:id])
  end

  def update
    @categoria_produto = CategoriaProduto.find(params[:id])
    if @categoria_produto.update_attributes(params[:categoria_produto])
      redirect_to @categoria_produto, :notice  => "Successfully updated categoria produto."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @categoria_produto = CategoriaProduto.find(params[:id])
    @categoria_produto.destroy
    redirect_to categoria_produtos_url, :notice => "Successfully destroyed categoria produto."
  end
end
