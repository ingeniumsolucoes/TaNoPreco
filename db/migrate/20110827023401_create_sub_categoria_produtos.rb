class CreateSubCategoriaProdutos < ActiveRecord::Migration
  def self.up
    create_table :sub_categoria_produtos do |t|
      t.string :nome
      t.belongs_to :categoria_produto
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_categoria_produtos
  end
end
