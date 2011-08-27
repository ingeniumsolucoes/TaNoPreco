class CreateClasseProdutos < ActiveRecord::Migration
  def self.up
    create_table :classe_produtos do |t|
      t.string :nome
      t.timestamps
    end
  end

  def self.down
    drop_table :classe_produtos
  end
end
