class CreateAtributoSubCategoria < ActiveRecord::Migration
  def change
    create_table :atributo_sub_categoria do |t|
      t.string :nome
      t.belongs_to :sub_categoria_produto

      t.timestamps
    end
    add_index :atributo_sub_categoria, :sub_categoria_produto_id
  end
end
