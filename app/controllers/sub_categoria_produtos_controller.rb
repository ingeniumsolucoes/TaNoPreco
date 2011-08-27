class SubCategoriaProdutosController < ApplicationController
  def index
    @sub_categoria_produtos = SubCategoriaProduto.all
  end

  def show
    @sub_categoria_produto = SubCategoriaProduto.find(params[:id])
  end

  def new
    @sub_categoria_produto = SubCategoriaProduto.new
  end

  def create
    @sub_categoria_produto = SubCategoriaProduto.new(params[:sub_categoria_produto])
    if @sub_categoria_produto.save
      redirect_to @sub_categoria_produto, :notice => "Successfully created sub categoria produto."
    else
      render :action => 'new'
    end
  end

  def edit
    @sub_categoria_produto = SubCategoriaProduto.find(params[:id])
  end

  def update
    @sub_categoria_produto = SubCategoriaProduto.find(params[:id])
    if @sub_categoria_produto.update_attributes(params[:sub_categoria_produto])
      redirect_to @sub_categoria_produto, :notice  => "Successfully updated sub categoria produto."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sub_categoria_produto = SubCategoriaProduto.find(params[:id])
    @sub_categoria_produto.destroy
    redirect_to sub_categoria_produtos_url, :notice => "Successfully destroyed sub categoria produto."
  end
end
