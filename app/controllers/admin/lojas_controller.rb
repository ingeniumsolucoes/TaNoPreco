class LojasController < ApplicationController
  def index
    @lojas = Loja.all
  end

  def show
    @loja = Loja.find(params[:id])
  end

  def new
    @loja = Loja.new
  end

  def create
    @loja = Loja.new(params[:loja])
    if @loja.save
      redirect_to @loja, :notice => "Successfully created loja."
    else
      render :action => 'new'
    end
  end

  def edit
    @loja = Loja.find(params[:id])
  end

  def update
    @loja = Loja.find(params[:id])
    if @loja.update_attributes(params[:loja])
      redirect_to @loja, :notice  => "Successfully updated loja."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @loja = Loja.find(params[:id])
    @loja.destroy
    redirect_to lojas_url, :notice => "Successfully destroyed loja."
  end
end
