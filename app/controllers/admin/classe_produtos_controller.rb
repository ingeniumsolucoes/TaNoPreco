class Admin::ClasseProdutosController < ApplicationController
  def index
    @classe_produtos = ClasseProduto.all
  end

  def show
    @classe_produto = ClasseProduto.find(params[:id])
  end

  def new
    @classe_produto = ClasseProduto.new
  end

  def create
    @classe_produto = ClasseProduto.new(params[:classe_produto])
    if @classe_produto.save
      redirect_to [:admin ,@classe_produto], :notice => "Successfully created classe produto."
    else
      render :action => 'new'
    end
  end

  def edit
    @classe_produto = ClasseProduto.find(params[:id])
  end

  def update
    @classe_produto = ClasseProduto.find(params[:id])
    if @classe_produto.update_attributes(params[:classe_produto])
      redirect_to [:admin,@classe_produto], :notice  => "Successfully updated classe produto."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @classe_produto = ClasseProduto.find(params[:id])
    @classe_produto.destroy
    redirect_to admin_classe_produtos_url, :notice => "Successfully destroyed classe produto."
  end
end
