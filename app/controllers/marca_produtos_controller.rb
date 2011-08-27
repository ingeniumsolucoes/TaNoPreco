class MarcaProdutosController < ApplicationController
  def index
    @marca_produtos = MarcaProduto.all
  end

  def show
    @marca_produto = MarcaProduto.find(params[:id])
  end

  def new
    @marca_produto = MarcaProduto.new
  end

  def create
    @marca_produto = MarcaProduto.new(params[:marca_produto])
    if @marca_produto.save
      redirect_to @marca_produto, :notice => "Successfully created marca produto."
    else
      render :action => 'new'
    end
  end

  def edit
    @marca_produto = MarcaProduto.find(params[:id])
  end

  def update
    @marca_produto = MarcaProduto.find(params[:id])
    if @marca_produto.update_attributes(params[:marca_produto])
      redirect_to @marca_produto, :notice  => "Successfully updated marca produto."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @marca_produto = MarcaProduto.find(params[:id])
    @marca_produto.destroy
    redirect_to marca_produtos_url, :notice => "Successfully destroyed marca produto."
  end
end
