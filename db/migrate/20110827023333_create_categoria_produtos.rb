class CreateCategoriaProdutos < ActiveRecord::Migration
  def self.up
    create_table :categoria_produtos do |t|
      t.string :nome
      t.belongs_to :classe_produto
      t.timestamps
    end
  end

  def self.down
    drop_table :categoria_produtos
  end
end
