class ClasseProduto < ActiveRecord::Base
  attr_accessible :nome
  has_many :categoria_produtos
end
