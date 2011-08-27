class SubCategoriaProduto < ActiveRecord::Base
  attr_accessible :nome, :categoria_produto
  belongs_to :categoria_produto
  has_many :atributo_sub_categorias
  accepts_nested_attributes_for :atributo_sub_categorias,
                                :allow_destroy => true,
                                :reject_if => lambda { |attrs| attrs.values.all?(&:blank?) }
end
