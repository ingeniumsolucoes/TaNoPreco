class CreateMarcaProdutos < ActiveRecord::Migration
  def self.up
    create_table :marca_produtos do |t|
      t.string :nome
      t.timestamps
    end
  end

  def self.down
    drop_table :marca_produtos
  end
end
