class CategoriaProduto < ActiveRecord::Base
  attr_accessible :nome, :classe_produto
  belongs_to :classe_produto
  has_many :sub_categoria_produtos
end
